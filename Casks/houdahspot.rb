cask 'houdahspot' do
  version '5.0.3'
  sha256 'eeec98aa1b767d7bd31e6d49a7dd2fa4409d4924c00575da3032b651435c01aa'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
