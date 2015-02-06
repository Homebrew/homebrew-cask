cask :v1 => 'parallels-virtualization-sdk' do
  version '10.1.3-28868'
  sha256 '085c34bd4e292ed718ae5c7c428e111c715480142bd15c42540420888b1df4ca'

  url "http://download.parallels.com/desktop/v#{version[/^\w+/]}/#{version.sub(/-.*$/, '')}/ParallelsVirtualizationSDK-#{version}.dmg"
  name 'Parallels Virtualization SDK'
  homepage 'http://www.parallels.com/products/desktop/download/'
  license :gratis

  app 'Parallels Virtualization SDK.app'

end
