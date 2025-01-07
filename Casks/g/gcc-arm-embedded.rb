cask "gcc-arm-embedded" do
  # Exists as a cask because it is impractical as a formula:
  # https://github.com/Homebrew/homebrew-core/pull/45780#issuecomment-569246452
  arch arm: "arm64", intel: "x86_64"

  version "14.2.rel1"
  pkg_version = "14.2.rel1"
  gcc_version = "14.2.1"
  sha256 arm:   "b62ea28a6ba69b9c34031595ed0b9ed4846d230dbe8ff0fbe182bb55d1d779f6",
         intel: "5d2e9ee4e73350bda79accc69fcd5ee59ccb902804a3f81a01d4c543b1ad7de7"

  url "https://developer.arm.com/-/media/Files/downloads/gnu/#{version}/binrel/arm-gnu-toolchain-#{version}-darwin-#{arch}-arm-none-eabi.pkg"
  name "GCC ARM Embedded"
  desc "Pre-built GNU bare-metal toolchain for 32-bit Arm processors"
  homepage "https://developer.arm.com/Tools%20and%20Software/GNU%20Toolchain"

  livecheck do
    url "https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads"
    regex(/href=.*?arm-gnu-toolchain-(\d+\.\d+\.\w+)-darwin-(?:\w+)-arm-none-eabi\.pkg/i)
  end

  pkg "arm-gnu-toolchain-#{version}-darwin-#{arch}-arm-none-eabi.pkg"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-addr2line"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-ar"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-as"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-c++"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-c++filt"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-cpp"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-elfedit"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-g++"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gcc"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gcc-#{gcc_version}"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gcc-ar"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gcc-nm"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gcc-ranlib"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gcov"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gcov-dump"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gcov-tool"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gdb"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gdb-add-index"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gfortran"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gprof"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-ld"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-ld.bfd"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-lto-dump"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-nm"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-objcopy"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-objdump"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-ranlib"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-readelf"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-size"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-strings"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-strip"

  uninstall pkgutil: "arm-gnu-toolchain-#{pkg_version}-darwin-#{arch}-arm-none-eabi",
            delete:  "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi",
            rmdir:   [
              "/Applications/ArmGNUToolchain",
              "/Applications/ArmGNUToolchain/#{pkg_version}",
            ]

  # No zap stanza required
end
