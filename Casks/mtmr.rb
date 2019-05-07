cask 'mtmr' do
  version '0.20.2'
  sha256 'c271ff8a017aa6bd65361eae0ff12b5a07b4a9346843c99d683efe49f252220c'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
