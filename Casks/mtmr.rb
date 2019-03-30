cask 'mtmr' do
  version '0.20.1'
  sha256 '3d4ba297e57324fd011f549a9b7b9263bdd9d21c214e9476859ca2d66c1a3c84'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
