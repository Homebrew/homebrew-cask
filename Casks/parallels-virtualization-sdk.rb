cask 'parallels-virtualization-sdk' do
  version '12.2.1-41615'
  sha256 'dce000083affb654bdf3ae1cd837d7437686ac3a5683a00a7d9e0d8f13d537b8'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall pkgutil: 'com.parallels.pkg.sdk'
end
