cask 'splashtop-streamer' do
  version '2.6.2.7'
  sha256 'e676b87ff0452af0b2462d911e6d03d9987ba7616e165c3adcfee14852ce4b76'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_MAC_v#{version}.dmg"
  name 'Splashtop Streamer'
  homepage 'http://www.splashtop.com/downloads'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Splashtop Streamer.pkg'

  uninstall pkgutil: 'com.splashtop.splashtopStreamer.*'
end
