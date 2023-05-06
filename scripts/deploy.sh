#!/bin/bash

mkdir _dist


paths=`cat .deploy_files | xargs -n1 -I{} bash -O nullglob -c "echo {}" | xargs -n1`

for path in $paths; do
  mkdir -p "_dist/$(dirname "$path")" && cp -a "$path" "_dist/$path"
done
