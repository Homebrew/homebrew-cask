cask 'shadowsocksx-ng' do
  version '1.2'
  sha256 'c9565a8af063c73bf3fc112f6501fe08931c63631d51910c33372db736ec5c45'

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/#{version}/ShadowsocksX-NG-#{version}.dmg"
  
  name 'ShadowsocksX-NG'
  homepage 'https://github.com/shadowsocks/ShadowsocksX-NG'
  license :gpl

  app 'ShadowsocksX-NG.app'
end
