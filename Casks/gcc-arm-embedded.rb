cask "gcc-arm-embedded" do
  # Exists as a cask because it is impractical as a formula:
  # https://github.com/Homebrew/homebrew-core/pull/45780#issuecomment-569246452
  arch arm: "arm64", intel: "x86_64"

  version "12.3.rel1"
  gcc_version = "12.3.1"
  sha256 arm:   "91b46a984743ac2323376dd0273ad587d56c74253315ede6fcc1cc8056b2aa85",
         intel: "a475c9cf491d4ffc2ebf04be3e9dc557729ad011bc1837dfaa1ba55b867272fa"

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

  uninstall pkgutil: "arm-gnu-toolchain-#{version}-darwin-#{arch}-arm-none-eabi",
            delete:  "/Applications/ArmGNUToolchain/#{version}/arm-none-eabi",
            rmdir:   [
              "/Applications/ArmGNUToolchain/#{version}",
              "/Applications/ArmGNUToolchain",
            ]
  # No zap stanza required
end
