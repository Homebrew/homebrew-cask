cask 'houdahspot' do
  version '5.1.1'
  sha256 '38587dee264c7bae0b5370a60c6175d2471e24de4804f592c12864965bfbf32e'

  url "https://dl.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
