cask 'houdahspot' do
  version '5.0.2'
  sha256 'bfe341bea6faf06a12d0b6fba8352cfcf307d4fee7262c2e25079a0502227de1'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
