cask 'segger-embedded-studio-for-arm' do
  version '4.52a'
  sha256 'a769acbb5a2445e55dfd9f464ca8bbc2d689fe773c5018e35ad88039ad77da75'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  appcast 'https://studio.segger.com/arm_segger_studio_release_notes.htm'
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: 'arm_segger_studio'
end
