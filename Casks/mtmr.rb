cask 'mtmr' do
  version '0.25'
  sha256 '2caa61b35e93e770f811c8528d1858fbf1b5176f2fb638645362f061007e16c6'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
