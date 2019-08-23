cask 'mtmr' do
  version '0.23'
  sha256 '5df82fe7637c355e1a4009b19d3b43da95946e12bfcc12193bbb94e6dbf8ae76'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
