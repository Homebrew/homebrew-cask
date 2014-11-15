cask :v1 => 'shadowsocksx' do
  version '2.3'
  sha256 '6aab97a8f5801d20ec779bce6e86349655b27bc6acd8ad70c939b89007be92c5'

  url "https://downloads.sourceforge.net/project/shadowsocksgui/dist/ShadowsocksX-#{version}.dmg"
  homepage 'https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-Help'
  license :oss

  app 'ShadowsocksX.app'
end
