cask 'gcc-arm-embedded' do
  version '5_4-2016q2,20160622'
  sha256 'e175a0eb7ee312013d9078a5031a14bf14dff82c7e697549f04b22e6084264c8'

  url "https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q2-update/+download/gcc-arm-none-eabi-#{version.before_comma}-#{version.after_comma}-mac.tar.bz2"
  name 'GCC ARM Embedded'
  homepage 'https://launchpad.net/gcc-arm-embedded'
  license :gpl

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
