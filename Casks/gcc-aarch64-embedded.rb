cask "gcc-aarch64-embedded" do
  # Exists as a cask because it is impractical as a formula:
  # https://github.com/Homebrew/homebrew-core/pull/45780#issuecomment-569246452
  version "11.3.rel1,b7a7f375702e40828c37fac6edaddf9a,21B1EADBDE363C3F8ED57CB62BFBD51E,1"
  sha256 "45f0c38264373a3f47e3356257dbb03d83edcf33a0c0335b26ecba6f34431609"

  url "https://developer.arm.com/-/media/Files/downloads/gnu/#{version.csv.first}/binrel/arm-gnu-toolchain-#{version.csv.first}-darwin-x86_64-aarch64-none-elf.pkg?rev=#{version.csv.second}&hash=#{version.csv.third}"
  name "GCC ARM Embedded"
  desc "Pre-built GNU bare-metal toolchain for 64-bit Arm processors"
  homepage "https://developer.arm.com/Tools%20and%20Software/GNU%20Toolchain"

  livecheck do
    url "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/downloads"
    regex(/href=.*?gcc-arm-(\d+\.\d+\.rel\d+)-darwin-(?:\w+)-aarch64-none-elf.pkg/i)
  end

  pkg "arm-gnu-toolchain-#{version.csv.first}-darwin-x86_64-aarch64-none-elf.pkg"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-addr2line"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-ar"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-as"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-c++"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-c++filt"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-cpp"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-elfedit"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-g++"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-gcc"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-gcc-#{version.csv.first.major_minor}.#{version.csv.fourth}"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-gcc-ar"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-gcc-nm"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-gcc-ranlib"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-gcov"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-gcov-dump"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-gcov-tool"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-gdb"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-gdb-add-index"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-gfortran"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-gprof"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-ld"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-ld.bfd"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-lto-dump"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-nm"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-objcopy"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-objdump"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-ranlib"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-readelf"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-size"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-strings"
  binary "#{appdir}/ArmGNUToolchain/#{version.csv.first}/aarch64-none-elf/bin/aarch64-none-elf-strip"

  uninstall pkgutil: "arm-gnu-toolchain-#{version.csv.first}-darwin-x86_64-aarch64-none-elf"

  zap trash: "#{appdir}/ArmGNUToolchain"
end
