cask 'mtmr' do
  version '0.19'
  sha256 'd5bb6ff746fbd0322dd4bcf51cf1c7b1f625eff4fbbb23009822fdfb3db53d7c'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://forum.mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
