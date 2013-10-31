class SplashtopStreamer < Cask
  url 'http://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_MAC_v2.4.5.3.dmg'
  homepage 'http://www.splashtop.com/downloads'
  version '2.4.5.3'
  sha1 '23df8703a24e4414f20c1dd0abb8fe73fd7058d1'
  install 'Splashtop Streamer.pkg'
  uninstall :pkgutil => 'com.splashtop.splashtopStreamer.*'
end
