cask 'parallels-virtualization-sdk' do
  version '12.1.3-41532'
  sha256 '127d15d569b223701b56e70d1bb638c5db5208e894e7fbc61a11a7f383d91370'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
