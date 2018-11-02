cask 'segger-embedded-studio-for-risc-v' do
  version '3.52a'
  sha256 '04b17efd94dec6505f4906007f2408b750903e497de36f91809dac162968595e'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_RISCV_v#{version.no_dots}_macos_x64.dmg"
  name 'Embedded Studio for RISC-V'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for RISC-V #{version}.pkg"

  uninstall pkgutil: "com.rowley.crossworks.riscv_segger_studio.#{version}"
end
