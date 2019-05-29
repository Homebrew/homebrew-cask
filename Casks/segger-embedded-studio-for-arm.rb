cask 'segger-embedded-studio-for-arm' do
  version '4.16'
  sha256 '348aa89f688a90977fd368be94774cc4347110bd69850fd614f6ebea43d027b9'

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  name 'SEGGER Embedded Studio for ARM'
  homepage 'https://www.segger.com/products/development-tools/embedded-studio'

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: 'arm_segger_studio'
end
