cask 'mtmr' do
  version '0.19'
  sha256 '1a43c3c127526f615834fc0b1b1f75a3352e3a55597da504a1b20c6dd80f57f8'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://forum.mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
