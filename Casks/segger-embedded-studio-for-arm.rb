cask 'segger-embedded-studio-for-arm' do
  version '4.10'
  sha256 'f2a2ca13370b31845d2d25f8f799a4718c90c2d59232e1e7895caa15b776e124'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: "com.rowley.crossworks.arm_segger_studio.#{version}"
end
