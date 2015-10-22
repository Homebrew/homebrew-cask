cask :v1 => 'parallels-virtualization-sdk' do
  version '11.0.0-31193'
  sha256 '5966961fa96e2124f7f4e8454620880f3fa618f46cb9cb46fcc7d6ec55e10718'

  url "http://download.parallels.com/desktop/v#{version[/^\w+/]}/#{version.sub(/-.*$/, '')}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'
  license :gratis

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall :pkgutil => 'com.parallels.pkg.sdk'
end
