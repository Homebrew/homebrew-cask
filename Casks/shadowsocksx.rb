cask :v1 => 'shadowsocksx' do
  version '2.6.2'
  sha256 'dda2763e07ca707cb46fb131b82be53bf752d93a91d646d3683613054dcc251f'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/shadowsocksgui/ShadowsocksX-#{version}.dmg"
  homepage 'https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-Help'
  license :gpl

  app 'ShadowsocksX.app'
end
