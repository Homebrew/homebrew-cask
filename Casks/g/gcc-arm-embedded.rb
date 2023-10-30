cask "gcc-arm-embedded" do
  # Exists as a cask because it is impractical as a formula:
  # https://github.com/Homebrew/homebrew-core/pull/45780#issuecomment-569246452
  arch arm: "arm64", intel: "x86_64"

  version "13.2.rel1"
  gcc_version = "13.2.1"
  sha256 arm:   "57343df9a2d7c5c587b59ad011bf516ca286f6f9d0ef5957a3ad251f5579fd16",
         intel: "cba310dcd5e5b7f443ffea3ae4d6e00d757a616eb824ace6158c7473a8e2b33c"

  url "https://developer.arm.com/-/media/Files/downloads/gnu/#{version}/binrel/arm-gnu-toolchain-#{version}-darwin-#{arch}-arm-none-eabi.pkg"
  name "GCC ARM Embedded"
  desc "Pre-built GNU bare-metal toolchain for 32-bit Arm processors"
  homepage "https://developer.arm.com/Tools%20and%20Software/GNU%20Toolchain"

  livecheck do
    url "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/downloads"
    regex(/href=.*?arm-gnu-toolchain-(\d+\.\d+\.\w+)-darwin-(?:\w+)-arm-none-eabi.pkg/i)
  end

  pkg "arm-gnu-toolchain-#{version}-darwin-#{arch}-arm-none-eabi.pkg"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-addr2line"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-ar"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-as"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-c++"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-c++filt"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-cpp"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-elfedit"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-g++"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-gcc"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-gcc-#{gcc_version}"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-gcc-ar"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-gcc-nm"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-gcc-ranlib"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-gcov"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-gcov-dump"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-gcov-tool"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-gdb"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-gdb-add-index"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-gfortran"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-gprof"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-ld"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-ld.bfd"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-lto-dump"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-nm"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-objcopy"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-objdump"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-ranlib"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-readelf"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-size"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-strings"
  binary "#{appdir}/ArmGNUToolchain/#{version}/arm-none-eabi/bin/arm-none-eabi-strip"

  uninstall pkgutil: "arm-gnu-toolchain-#{version.major_minor}*-darwin-#{arch}-arm-none-eabi",
            delete:  "/Applications/ArmGNUToolchain/#{version}/arm-none-eabi",
            rmdir:   [
              "/Applications/ArmGNUToolchain/#{version}",
              "/Applications/ArmGNUToolchain",
            ]
  # No zap stanza required
end
