cask 'segger-embedded-studio-for-arm' do
  version '4.12'
  sha256 '77f11cc14bd706adf4f955b3c35c4d93e2c115b283c110d7cd2497a1add629c6'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: "com.rowley.crossworks.arm_segger_studio.#{version}"
end
