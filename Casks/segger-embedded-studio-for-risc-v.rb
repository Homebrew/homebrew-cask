cask 'segger-embedded-studio-for-risc-v' do
  version '4.22'
  sha256 '69c67d1969d861de63a519818fed88592863587eee1fa72da134bb2445f01b45'

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
