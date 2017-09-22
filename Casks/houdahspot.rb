cask 'houdahspot' do
  version '4.3.1'
  sha256 '1f4b7b0b591ef7fa799654ef33c5370170846656c11748d476b8f08249572b3a'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: 'fe4e9c2c244624547de7cc2c3bfe14f14ff4eada68600b4d43f2a727c416ed46'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
