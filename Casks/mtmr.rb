cask 'mtmr' do
  version '0.21'
  sha256 'd353814e4d52f882a78ebd452ee78277a29b6cdb733707ec0b7ccb1237970153'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
