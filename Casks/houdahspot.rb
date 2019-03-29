cask 'houdahspot' do
  version '4.4.2'
  sha256 '6f7847d1104800f55ae5512fd927c86172e3d8f960bd3135511467972e5afe12'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
