cask 'shadowsocksx' do
  version '2.6.4'
  sha256 'fe76027d34fcf87e6c9ad9dcf7ba77827dbeb66ac994d9fb27e1cd010045db5a'

  url "https://github.com/RobertYan/ShadowsocksX/releases/download/#{version}/ShadowsocksX.#{version}.zip"
  appcast 'https://github.com/RobertYan/ShadowsocksX/releases/releases.atom',
          checkpoint: 'e94cd1ccc01488e99b07a372162ea9e555b6aef0e0911cbb198281f03b975467'
  name 'ShadowsocksX'
  homepage 'https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-Help'
  license :gpl

  depends_on formula: 'libsodium'

  app 'ShadowsocksX.app'
end
