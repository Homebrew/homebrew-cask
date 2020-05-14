cask 'mtmr' do
  version '0.26'
  sha256 'af1e54566f3d63439d6e27ae9fe3b2b87c63a75628c418cdf97bb716cf8e2f0d'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
