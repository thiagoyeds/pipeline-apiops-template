#!/bin/bash

for crd in $(cat .files-to-apply)
do
  kindCrd=$(yq '.kind' $crd)
#   echo $crd $kindCrd
  if [ "$kindCrd" == "App" ]; then
    echo $crd
  fi
done

# Output:
# Take an umbrella
