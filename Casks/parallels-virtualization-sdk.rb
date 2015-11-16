cask :v1 => 'parallels-virtualization-sdk' do
  version '11.1.0-32202'
  sha256 'cfb7fff41a956a1583e6d4bb86eac09429c6373f98c894f8c6ada855e7d414e4'

  url "http://download.parallels.com/desktop/v#{version[/^\w+/]}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'
  license :gratis

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall :pkgutil => 'com.parallels.pkg.sdk'
end
