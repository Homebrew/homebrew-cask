cask :v1 => 'splashtop-streamer' do
  version '2.4.5.3'
  sha256 '07fd11f7c19ce0c7c29e65d5182532940f74e6e4512b696c19e58389d5e86357'

  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_MAC_v#{version}.dmg"
  homepage 'http://www.splashtop.com/downloads'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Splashtop Streamer.pkg'

  uninstall :pkgutil => 'com.splashtop.splashtopStreamer.*'
end
