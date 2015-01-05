cask :v1 => 'shadowsocksx' do
  version '2.5.1'
  sha256 '1f1000ac5b3b7704c377a0c78014628d782014dbf3b3ae60e48c2da8ffc4cccf'

  url "http://downloads.sourceforge.net/project/shadowsocksgui/dist/ShadowsocksX-#{version}.dmg"
  homepage 'https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-Help'
  license :oss

  app 'ShadowsocksX.app'
end
