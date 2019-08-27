cask 'segger-embedded-studio-for-risc-v' do
  version '4.20a'
  sha256 '708fed7bcb5581a09a9351997061ef286e4f42efc440ec6928ecbdee434ef004'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_RISCV_v#{version.no_dots}_macos_x64.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.segger.com/downloads/embedded-studio/EmbeddedStudio_RISCV_Mac',
          configuration: version.no_dots
  name 'Embedded Studio for RISC-V'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for RISC-V #{version}.pkg"

  uninstall pkgutil: [
                       'riscv_segger_studio',
                       "com.rowley.crossworks.riscv_segger_studio.#{version}",
                     ]
end
