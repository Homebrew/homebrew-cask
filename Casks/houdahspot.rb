cask 'houdahspot' do
  version '5.0.11'
  sha256 'b95fd3898856c647e5905e503e4808b1fa001e6b270c8da94e31a7dfc8f2eba3'

  url "https://www.houdah.com/houdahSpot/updates/cast5_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
