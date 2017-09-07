cask 'parallels-virtualization-sdk' do
  version '13.0.1-42947'
  sha256 'de1356dabca6fcc1ac499b2f42b61b8e85dc6872422ff4556333e8e4a1035009'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
