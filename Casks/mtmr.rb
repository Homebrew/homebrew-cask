cask 'mtmr' do
  version '0.21.1'
  sha256 '8b298974b3bfcc9bb48816550c97ef42da20ea7c75660765e05823b4abfd8db2'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
