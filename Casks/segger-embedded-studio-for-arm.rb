cask 'segger-embedded-studio-for-arm' do
  version '3.52a'
  sha256 'f6b7aa74c491f4a7bc07b94ec5e52cb2d9d924e6287dba23307e9ef0179f7086'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: "com.rowley.crossworks.arm_segger_studio.#{version}"
end
