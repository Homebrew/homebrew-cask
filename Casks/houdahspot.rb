cask 'houdahspot' do
  version '4.4.1'
  sha256 'b3e6e836e94820e8888bbf1d597031c670a071d253d168b5de238925acd2d920'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
