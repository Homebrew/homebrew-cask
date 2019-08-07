cask 'houdahspot' do
  version '5.0.7'
  sha256 'df57bc36042450d9213afe9c28eba4796f186344ea7379028066f9b721416d13'

  url "https://www.houdah.com/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
