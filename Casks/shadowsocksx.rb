cask :v1 => 'shadowsocksx' do
  version '2.4.1'
  sha256 '9a9c9430420dcaf0fbf68a43c91776fe8f519ce18bccc52f79e3f34819eaa7ea'

  url "https://downloads.sourceforge.net/project/shadowsocksgui/dist/ShadowsocksX-#{version}.dmg"
  homepage 'https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-Help'
  license :oss

  app 'ShadowsocksX.app'
end
