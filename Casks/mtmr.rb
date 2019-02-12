cask 'mtmr' do
  version '0.19.4'
  sha256 'a40e5920a1265db7273ec289e291ae59b9f89105a0710158f60466e5cad3b08e'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://forum.mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
