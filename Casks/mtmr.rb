cask 'mtmr' do
  version '0.19.3'
  sha256 'f582fe5b758f2560d5da5b990d5629bb28613609ef214c24790428ee1fe09f62'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://forum.mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
