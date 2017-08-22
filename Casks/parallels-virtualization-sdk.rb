cask 'parallels-virtualization-sdk' do
  version '13.0.0-42936'
  sha256 'd5996eb3b54f65603b8ddbd5583f0d58523c3a8dcb5ca20261798a09c207e67a'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
