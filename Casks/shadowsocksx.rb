cask :v1 => 'shadowsocksx' do
  version '2.6.1'
  sha256 '79650f9c592b69b0cbe867962f2aeedfcd07623c12db9585b533e7c5786c6d6f'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/shadowsocksgui/dist/ShadowsocksX-#{version}.dmg"
  homepage 'https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-Help'
  license :oss

  app 'ShadowsocksX.app'
end
