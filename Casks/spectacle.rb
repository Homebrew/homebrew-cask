cask 'spectacle' do
  version '1.2'
  sha256 '766d5bf3b404ec567110a25de1d221290bc829302283b28ed0fbe73b9557f30c'

  # spectacle.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://spectacle.s3.amazonaws.com/downloads/Spectacle+#{version}.zip"
  appcast 'https://www.spectacleapp.com/updates/appcast.xml'
  name 'Spectacle'
  homepage 'https://www.spectacleapp.com/'

  auto_updates true

  app 'Spectacle.app'

  zap trash: [
               '~/Library/Application Support/Spectacle',
               '~/Library/Caches/com.divisiblebyzero.Spectacle',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.divisiblebyzero.Spectacle',
               '~/Library/Cookies/com.divisiblebyzero.Spectacle.binarycookies',
               '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist',
             ]
end
