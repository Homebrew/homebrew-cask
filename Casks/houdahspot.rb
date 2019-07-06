cask 'houdahspot' do
  version '5.0.6'
  sha256 '78fdaefec8e49d04a95f1fa06b3692ecd800ca7e3bf0bc810f3b112e7745beee'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
