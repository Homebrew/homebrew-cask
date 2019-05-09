cask 'mtmr' do
  version '0.20.3'
  sha256 '589cabbf3c39ca3ae7a870b2608c6309da793491e6ef99e0181ee3e33e6e8c54'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
