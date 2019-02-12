cask 'mtmr' do
  version '0.19.5'
  sha256 '0e0aee513d029190cbf65f21ac5b6902397da85ea68fc58acc15ff557d13f843'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://forum.mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
