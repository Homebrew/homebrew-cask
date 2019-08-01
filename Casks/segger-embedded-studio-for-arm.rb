cask 'segger-embedded-studio-for-arm' do
  version '4.18'
  sha256 '3a29e54cd5e10ba2fb5b2f20db88d06527b6086a81ffeca662409db0ea7fd2ef'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: 'arm_segger_studio'
end
