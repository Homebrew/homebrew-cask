cask 'shadowsocksx-ng-r8' do
  version '1.6.9'
  sha256 '46eb20b47d2aac54b466ecbb2f3c5d9be3085c9fb8651f55f49f98b2d6de9b21'

  url "https://github.com/paradiseduo/ShadowsocksX-NG-R8/releases/download/#{version}/ShadowsocksX-NG-R8.zip"
  appcast "https://github.com/paradiseduo/shadowsocksx-ng-r8/releases.atom"
  name 'ShadowsocksX-NG-R8'
  homepage 'https://github.com/paradiseduo/ShadowsocksX-NG-R8/'

  app 'ShadowsocksX-NG-R8.app'
end
