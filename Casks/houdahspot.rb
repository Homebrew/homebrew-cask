cask 'houdahspot' do
  version '5.1.1'
  sha256 'e353651fbcdb972432798102edce6b6395d1e401abc2183fb69be5a9302bc43f'

  url "https://www.houdah.com/houdahSpot/download_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
