cask 'mtmr' do
  version '0.20'
  sha256 'a8eee74c1cb3c67187bd6c441a43ac13a2bac34dc6e19b67d1fb120a49ec623a'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://forum.mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
