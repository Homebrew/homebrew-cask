cask :v1 => 'shadowsocksx' do
  version '2.6.3'
  sha256 'f0e263dd1d74b0b6977389f2b8b28c524bceccbc5ad24ca8a8164b92ede1c45a'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/shadowsocksgui/ShadowsocksX-#{version}.dmg"
  name 'ShadowsocksX'
  homepage 'https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-Help'
  license :gpl

  app 'ShadowsocksX.app'
end
