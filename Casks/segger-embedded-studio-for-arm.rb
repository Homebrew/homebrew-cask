cask 'segger-embedded-studio-for-arm' do
  version '4.42'
  sha256 '471378e6d8b5db8fbbb7d27088df73d8fe6606df42594bc857a25058cde0593c'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  appcast 'https://studio.segger.com/arm_segger_studio_release_notes.htm'
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: 'arm_segger_studio'
end
