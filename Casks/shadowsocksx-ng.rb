cask 'shadowsocksx-ng' do
  version '1.2'
  sha256 'c9565a8af063c73bf3fc112f6501fe08931c63631d51910c33372db736ec5c45'

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/#{version}/ShadowsocksX-NG-#{version}.dmg"
  appcast 'https://github.com/shadowsocks/ShadowsocksX-NG/releases.atom',
          checkpoint: 'a04e2104c8823d27e4984fc05aa1a4948c7b6b7c7859c7f537081c72001a5b6f'
  name 'ShadowsocksX-NG'
  homepage 'https://github.com/shadowsocks/ShadowsocksX-NG'

  conflicts_with cask: 'shadowsocksx'

  app 'ShadowsocksX-NG.app'
end
