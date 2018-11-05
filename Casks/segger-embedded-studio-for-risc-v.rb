cask 'segger-embedded-studio-for-risc-v' do
  version '4.10a'
  sha256 '6c07bd5d19e325b3a76a61d722a05a594a0091dd42cda7b4c30796bc0426e30a'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_RISCV_v#{version.no_dots}_macos_x64.dmg"
  name 'Embedded Studio for RISC-V'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for RISC-V #{version}.pkg"

  uninstall pkgutil: "com.rowley.crossworks.riscv_segger_studio.#{version}"
end
