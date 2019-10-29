cask 'houdahspot' do
  version '5.0.10'
  sha256 '354028ebce2446327b479eac96a7bce132a47c5dd65e757f652c7823d1fafdd9'

  url "https://www.houdah.com/houdahSpot/updates/cast5_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
