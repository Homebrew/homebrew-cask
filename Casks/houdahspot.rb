cask 'houdahspot' do
  version '5.0'
  sha256 'ff3e49345c1184288bb7a841edce9e8a561542a56e5a8d85dabaac08881fe29d'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
