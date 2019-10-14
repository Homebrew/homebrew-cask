cask 'segger-embedded-studio-for-arm' do
  version '4.22'
  sha256 '0673272a8f22f8d63f0b37cc4663eda195edc6c02f47757e02a7e4a8e86e6841'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.segger.com/downloads/embedded-studio/EmbeddedStudio_ARM_Mac',
          configuration: version.no_dots
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: 'arm_segger_studio'
end
