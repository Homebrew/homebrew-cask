cask 'mtmr' do
  version '0.20.3'
  sha256 'c7a162669669f018e036dfb4fcd15441b75c73ad01dd5f396b479d04ab55bc8a'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
