#!/bin/bash

(
    mkdir -p build &&
        cd build &&
        cmake .. -DCOMPILE_TESTS=NO \
              -DCOMPILE_STUBGEN=NO \
              -DCOMPILE_EXAMPLES=NO \
              -DHTTP_SERVER=NO \
              -DHTTP_CLIENT=NO \
              -DREDIS_SERVER=NO \
              -DREDIS_CLIENT=NO \
              -DUNIX_DOMAIN_SOCKET_SERVER=NO \
              -DUNIX_DOMAIN_SOCKET_CLIENT=NO \
              -DFILE_DESCRIPTOR_SERVER=NO \
              -DFILE_DESCRIPTOR_CLIENT=NO \
              -DTCP_SOCKET_SERVER=YES \
              -DTCP_SOCKET_CLIENT=YES &&
        make -j
    )
