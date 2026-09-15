cask "gcc-arm-embedded" do
  # Exists as a cask because it is impractical as a formula:
  # https://github.com/Homebrew/homebrew-core/pull/45780#issuecomment-569246452
  arch arm: "arm64", intel: "x86_64"

  pkg_version = nil
  gcc_version = nil
  on_arm do
    version "15.3.rel1"
    pkg_version = "15.3.rel1"
    gcc_version = "15.3.1"
    sha256 "5fb58dc3bd6684e70a02bd1c654a6b91f044cda241eb3ae663a7b9170491d7b2"

    livecheck do
      url "https://gitlab.arm.com/tooling/gnu-toolchains-for-arm/-/raw/main/README.md"
      regex(%r{\([^)]*?releases/v?(\d+(?:\.\d+)+(?:[._-]rel\d+)?)[?)]}i)
    end

    binary "/Applications/ArmGNUToolchain/#{pkg_version}/arm-none-eabi/bin/arm-none-eabi-gstack"
  end
  on_intel do
    version "14.2.rel1"
    pkg_version = "14.2.rel1"
    gcc_version = "14.2.1"
    sha256 "5d2e9ee4e73350bda79accc69fcd5ee59ccb902804a3f81a01d4c543b1ad7de7"

    livecheck do
      skip "Legacy version"
    end
  end

  url "https://gitlab.arm.com/api/v4/projects/tooling%2Fgnu-toolchains-for-arm/packages/generic/gnu-toolchain/#{version}/arm-gnu-toolchain-#{version}-darwin-#{arch}-arm-none-eabi.pkg"
  name "GCC ARM Embedded"
  desc "Pre-built GNU bare-metal toolchain for 32-bit Arm processors"
  homepage "https://developer.arm.com/tools-and-software/gnu-toolchain"

  depends_on :macos

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
