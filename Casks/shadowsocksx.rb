cask :v1 => 'shadowsocksx' do
  version '2.4.2'
  sha256 '4f17766f4cf023437a0666c5a5c8aef8b6ccb3015fb5eea1373914377b53a216'

  url "https://downloads.sourceforge.net/project/shadowsocksgui/dist/ShadowsocksX-#{version}.dmg"
  homepage 'https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-Help'
  license :oss

  app 'ShadowsocksX.app'
end
