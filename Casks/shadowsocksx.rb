cask :v1 => 'shadowsocksx' do
  version :latest
  sha256 :no_check

  # sourceforge.net is the official download host per the vendor homepage
  url "http://sourceforge.net/projects/shadowsocksgui/files/latest/download"
  homepage 'https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-Help'
  license :gpl

  app 'ShadowsocksX.app'
end
