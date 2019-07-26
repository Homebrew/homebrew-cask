cask 'mtmr' do
  version '0.22'
  sha256 '0e8c522ad9485d05b02219cf957b7465d44a9ae4b83c420f021d01b634617b51'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
