cask 'mtmr' do
  version '0.23.1'
  sha256 '41912a459ae3c3fdea91a3c1959b00be137c3b6ea49362707cc7cca44179ddca'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
