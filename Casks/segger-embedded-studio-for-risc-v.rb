cask 'segger-embedded-studio-for-risc-v' do
  version '4.18'
  sha256 '0cf07e1e8884f975ba2957071d10a6f4f5fb3b68d89636838150334f34335126'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_RISCV_v#{version.no_dots}_macos_x64.dmg"
  name 'Embedded Studio for RISC-V'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for RISC-V #{version}.pkg"

  uninstall pkgutil: [
                       'riscv_segger_studio',
                       "com.rowley.crossworks.riscv_segger_studio.#{version}",
                     ]
end
