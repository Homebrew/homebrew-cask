cask 'mtmr' do
  version '0.24'
  sha256 'cbf78fef1900aa7265c621d1e62460496d083e49b5d4bcb2a0304095f13e0bca'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
