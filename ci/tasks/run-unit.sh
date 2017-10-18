#!/usr/bin/env bash

set -e

my_dir="$( cd $(dirname $0) && pwd )"
release_dir="$( cd ${my_dir} && cd ../.. && pwd )"
omg_dir="${release_dir}/src/omg-cli"

export GOPATH=${release_dir}
export PATH=${GOPATH}/bin:${PATH}

pushd ${omg_dir}
	ginkgo -skipPackage=certification -r .
popd