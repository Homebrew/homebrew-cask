cask 'segger-embedded-studio-for-arm' do
  version '4.16a'
  sha256 '3b0127ce8d739f23f8e65cf1b1e3a06e20c5c9ca8f6dd04c6cc24eaaf9abc109'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: 'arm_segger_studio'
end
