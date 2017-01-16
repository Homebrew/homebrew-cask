cask 'parallels-virtualization-sdk' do
  version '12.1.1-41491'
  sha256 '76bca1e1d0b74db5b43d81774674393771048bbca9e1c21e4ef60cbd5ca254e0'

  url "https://download.parallels.com/desktop/v#{version[%r{^\w+}]}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
