cask 'houdahspot' do
  version '5.0.8'
  sha256 '23e1d62694d5ab29fddd1383116e12af098ed241929fd31fbb755f0994e4c397'

  url "https://www.houdah.com/houdahSpot/updates/cast5_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
