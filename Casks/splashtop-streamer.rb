cask 'splashtop-streamer' do
  version '3.0.8.3'
  sha256 'c23d0e8b865cf88e2ce39e8be3b1b366883839b280a284a24fae891e3aacaedb'

  # d17kmd0va0f0mp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_MAC_v#{version}.dmg"
  name 'Splashtop Streamer'
  homepage 'http://www.splashtop.com/downloads'

  pkg 'Splashtop Streamer.pkg'

  uninstall pkgutil: 'com.splashtop.splashtopStreamer.*'
end
