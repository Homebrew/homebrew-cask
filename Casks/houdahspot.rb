cask 'houdahspot' do
  version '5.0.1'
  sha256 'f3096898345807fe607182e014161cacd9d434b13795d7f7e254a975a52bd69f'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
