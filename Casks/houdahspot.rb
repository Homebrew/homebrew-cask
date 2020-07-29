cask 'houdahspot' do
  version '5.1.3'
  sha256 '67eeb8925aecc19f9f957ce3d23d3b1e202dfe1b1f7d4fed687efd0d1c80c654'

  url "https://dl.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
