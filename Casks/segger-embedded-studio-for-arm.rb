cask 'segger-embedded-studio-for-arm' do
  version '4.52b'
  sha256 '3f55cf1242d59fcf65797a2d785efa363ea8fc7299e475d167b8c9cc16a53ea2'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  appcast 'https://studio.segger.com/arm_segger_studio_release_notes.htm'
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: 'arm_segger_studio'
end
