cask 'parallels-virtualization-sdk' do
  version '13.2.0-43213'
  sha256 '07e1a4cc36f167735b3ed891c61f8286d00ca61acf7181f96fbf8ac27fa8abdf'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
