cask 'mtmr' do
  version '0.25'
  sha256 'c6a627135bdbb88e8ad11c2be983400343a489740017d89a961f421fd6bad54f'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
