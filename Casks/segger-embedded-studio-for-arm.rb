cask 'segger-embedded-studio-for-arm' do
  version '4.42a'
  sha256 '43bd4345de952a957b87e1b6cedc58b019ffd74fa00d599388229f5e02cb5395'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  appcast 'https://studio.segger.com/arm_segger_studio_release_notes.htm'
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: 'arm_segger_studio'
end
