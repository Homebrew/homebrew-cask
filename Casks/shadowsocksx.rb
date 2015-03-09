cask :v1 => 'shadowsocksx' do
  version '2.6.3'
  sha256 'f0e263dd1d74b0b6977389f2b8b28c524bceccbc5ad24ca8a8164b92ede1c45a'

  url "http://downloads.sourceforge.net/project/shadowsocksgui/dist/ShadowsocksX-#{version}.dmg"
  homepage 'https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-Help'
  license :oss

  app 'ShadowsocksX.app'
end
