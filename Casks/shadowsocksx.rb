cask :v1 => 'shadowsocksx' do
  version '2.6'
  sha256 'd7b152f2eb76caa8af48ae275eb9b5cecc716f14bdd5d93a090d7b1025b3cd26'

  url "http://downloads.sourceforge.net/project/shadowsocksgui/dist/ShadowsocksX-#{version}.dmg"
  homepage 'https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-Help'
  license :oss

  app 'ShadowsocksX.app'
end
