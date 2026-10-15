#!/usr/bin/env bash
# The datastore VG + database LV are created by the LVM task (e3-lvm) on the
# SAME shared disk; this task only extends them. No seeding here, so the LVM
# task's baseline stays clean (nothing to resize until it has been created).
. "$RHCSA_LIB/storage-prep.sh"
ensure_shared_disk e3storage >/dev/null 2>&1
echo "e3-lvresize: resize datastore/database to 500 MiB (created in the LVM task)"
exit 0
