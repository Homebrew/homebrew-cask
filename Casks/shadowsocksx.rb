cask 'shadowsocksx' do
  version '2.6.3'
  sha256 'f0e263dd1d74b0b6977389f2b8b28c524bceccbc5ad24ca8a8164b92ede1c45a'

  url "https://github.com/shadowsocks/shadowsocks-iOS/releases/download/#{version}/ShadowsocksX-#{version}.dmg"
  appcast 'https://github.com/shadowsocks/shadowsocks-iOS/releases.atom',
          checkpoint: '1694eafe2b374b0180cc685e6c7d5a7c1de7b41211fabcdd2dc2e82001dfca4c'
  name 'ShadowsocksX'
  homepage 'https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-Help/'

  app 'ShadowsocksX.app'
end
