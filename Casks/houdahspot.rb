cask 'houdahspot' do
  version '5.0'
  sha256 '6aa7e5970a7ba2396fe582346d0f1e9c50b29538e7cdbef93af93ae5355ee09a'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
