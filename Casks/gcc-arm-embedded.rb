cask 'gcc-arm-embedded' do
  version '6-2017-q1'
  sha256 'de4de95b09740272aa95ca5a43bb234ba29c323eddcad2ee34e901eebda910a2'

  # developer.arm.com was verified as official when first introduced to the cask
  url "https://developer.arm.com/-/media/Files/downloads/gnu-rm/6-2017q1/gcc-arm-none-eabi-#{version}-update-mac.tar.bz2"
  appcast 'http://feeds.launchpad.net/gcc-arm-embedded/announcements.atom',
          checkpoint: '87c7fd9e672158415b363116114944dea9c9070c6ecf1d097cb4d16202318b12'
  name 'GCC ARM Embedded'
  homepage 'https://launchpad.net/gcc-arm-embedded'

  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-addr2line"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-ar"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-as"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-c++"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-c++filt"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-cpp"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-elfedit"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-g++"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-gcc"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-gcc-ar"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-gcc-nm"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-gcc-ranlib"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-gcov"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-gcov-tool"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-gdb"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-gdb-py"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-gprof"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-ld"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-ld.bfd"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-nm"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-objcopy"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-objdump"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-ranlib"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-readelf"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-size"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-strings"
  binary "gcc-arm-none-eabi-#{version}-update/bin/arm-none-eabi-strip"
end
