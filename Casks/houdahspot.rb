cask 'houdahspot' do
  version '5.0.5'
  sha256 '3000b079e27e0fa95b2488d6ffe1dd6f10cd335b014b843e7123071e5afea641'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
