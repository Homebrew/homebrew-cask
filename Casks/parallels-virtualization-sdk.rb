cask 'parallels-virtualization-sdk' do
  version '14.0.0-45124'
  sha256 '1b4b2410ac6b108d172f58e5568d2b8c8a33d2d7f420c42070e10275aa18b227'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
