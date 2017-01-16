cask 'gcc-arm-embedded' do
  version '6_2-2016q4,20161216'
  sha256 'cb52433610d0084ee85abcd1ac4879303acba0b6a4ecfe5a5113c09f0ee265f0'

  # armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm was verified as official when first introduced to the cask
  url "https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/#{version.before_comma.sub(%r{_\d+}, '')}/gcc-arm-none-eabi-#{version.before_comma}-#{version.after_comma}-mac.tar.bz2"
  appcast 'http://feeds.launchpad.net/gcc-arm-embedded/announcements.atom',
          checkpoint: '5cc2b8a304f5810461b7f77040f9453919c12c9ef59945d6927dffc00fa2baed'
  name 'GCC ARM Embedded'
  homepage 'https://launchpad.net/gcc-arm-embedded'

  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-addr2line"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-ar"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-as"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-c++"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-c++filt"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-cpp"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-elfedit"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-g++"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gcc"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gcc-ar"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gcc-nm"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gcc-ranlib"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gcov"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gcov-tool"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gdb"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gdb-py"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gprof"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-ld"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-ld.bfd"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-nm"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-objcopy"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-objdump"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-ranlib"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-readelf"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-size"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-strings"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-strip"
end
