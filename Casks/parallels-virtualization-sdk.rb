cask :v1 => 'parallels-virtualization-sdk' do
  version '10.2.1-29006'
  sha256 '5cfa2afa2e21344876c9d27e6731ed5bdf0a234178114cdefbf9c110ea3fb4ac'

  url "http://download.parallels.com/desktop/v#{version[/^\w+/]}/#{version.sub(/-.*$/, '')}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'https://www.parallels.com/products/desktop/download/'
  license :gratis

  pkg 'Parallels Virtualization SDK.pkg'

  uninstall :pkgutil => 'com.parallels.pkg.sdk'
end
