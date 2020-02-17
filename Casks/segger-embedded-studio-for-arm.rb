cask 'segger-embedded-studio-for-arm' do
  version '4.50'
  sha256 '93435340cf7038a103f88d1c4a17492aa86af228018de9e621ed37a334a7b9e4'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  appcast 'https://studio.segger.com/arm_segger_studio_release_notes.htm'
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: 'arm_segger_studio'
end
