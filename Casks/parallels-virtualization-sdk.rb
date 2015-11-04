cask :v1 => 'parallels-virtualization-sdk' do
  version '11.0.2-31348'
  sha256 '159c31e7ef013cb51e10cb9c904dc7409ceee597b4ede28417067a26126cb94d'

  url "http://download.parallels.com/desktop/v#{version[/^\w+/]}/#{version.sub(/-.*$/, '')}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'
  license :gratis

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall :pkgutil => 'com.parallels.pkg.sdk'
end
