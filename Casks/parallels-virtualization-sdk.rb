cask :v1 => 'parallels-virtualization-sdk' do
  version '10.1.4-28883'
  sha256 '7d3bca4a9b4b17e5033c132b03fb01d7c08402e6d2cd8c0a9dd42743a435dc04'

  url "http://download.parallels.com/desktop/v#{version[/^\w+/]}/#{version.sub(/-.*$/, '')}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'http://www.parallels.com/products/desktop/download/'
  license :gratis

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall :pkgutil => 'com.parallels.pkg.sdk'
end
