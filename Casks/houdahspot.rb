cask 'houdahspot' do
  version '4.3.7'
  sha256 'c36c9cbcf05b999ee172f33b670559787ce1d4b5965a1bcd610afafd40d43977'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
