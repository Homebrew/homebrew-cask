cask 'segger-embedded-studio-for-arm' do
  version '4.10a'
  sha256 '57a94313d57782574669c86f891d443e11de1e4ebc4078f34c5d027c0d5cacb9'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: "com.rowley.crossworks.arm_segger_studio.#{version}"
end
