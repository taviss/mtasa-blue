#/bin/sh
# Note: Commands tested on Ubuntu 16.04 LTS, other distributions may have other paths
# x64
mkdir x64 
rm x64/libstdc++.a x64/libmysqlclient++.a
objcopy --redefine-syms=glibc_version.redef /usr/lib/gcc/x86_64-linux-gnu/5/libstdc++.a x64/libstdc++.a
objcopy --redefine-syms=glibc_version.redef /usr/lib/x86_64-linux-gnu/libmysqlclient.a x64/libmysqlclient.a

# x86 
mkdir x86 
rm x86/libstdc++.a
objcopy --redefine-syms=glibc_version.redef /usr/lib/gcc/x86_64-linux-gnu/5/32/libstdc++.a x86/libstdc++.a
# TODO: This does not seem to exist in any amd64 ubuntu package?
# objcopy --redefine-syms=glibc_version.redef /usr/lib/x86_64-linux-gnu/libmysqlclient.a x86/libmysqlclient.a
