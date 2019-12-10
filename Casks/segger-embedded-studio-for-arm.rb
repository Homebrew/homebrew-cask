cask 'segger-embedded-studio-for-arm' do
  version '4.30c'
  sha256 '152cfbed1ce8c3c73acc9b8ac382c15da11cf4c3b5b15807a451e7ee81ae774e'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.segger.com/downloads/embedded-studio/EmbeddedStudio_ARM_Mac',
          configuration: version.no_dots
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: 'arm_segger_studio'
end
