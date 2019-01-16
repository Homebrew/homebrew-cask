cask 'segger-embedded-studio-for-risc-v' do
  version '4.12'
  sha256 '2064b0a4f8b64525f69a6a86da5686375166d28249b880518446d0cbccda6f25'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_RISCV_v#{version.no_dots}_macos_x64.dmg"
  name 'Embedded Studio for RISC-V'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for RISC-V #{version}.pkg"

  uninstall pkgutil: "com.rowley.crossworks.riscv_segger_studio.#{version}"
end
