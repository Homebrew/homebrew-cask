cask 'parallels-virtualization-sdk' do
  version '11.1.2-32408'
  sha256 '0623df879f039e0b7d5b24ef900440b5ac3106ba29556ff0ea53c7c9e3c5eea1'

  url "http://download.parallels.com/desktop/v#{version[%r{^\w+}]}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'
  license :gratis

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
