cask 'houdahspot' do
  version '4.4'
  sha256 'e084d1ecf1bba86cf7c3b8245bee7515f898e9e3e08885861840eca1e8da9b1c'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
