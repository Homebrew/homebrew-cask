cask 'houdahspot' do
  version '4.4'
  sha256 '6219a3f278e4b3a5be824d7b3f9509f0c998e72599341e8687333e36f0febcd5'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
