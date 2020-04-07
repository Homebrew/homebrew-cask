cask 'snipaste' do
  version '2.3.3-Beta'
  sha256 '8ef9776d39c150a1f95240b3005e872296e91fa34e3dc9bfe926fcc50a5e837d'

  # bitbucket.org/liule/snipaste was verified as official when first introduced to the cask
  url "https://bitbucket.org/liule/snipaste/downloads/Snipaste-#{version}.dmg"
  appcast 'https://www.snipaste.com/download.html'
  name 'Snipaste'
  homepage 'https://www.snipaste.com/'

  auto_updates true

  app 'Snipaste.app'

  uninstall quit: 'com.Snipaste'

  zap trash: '~/Library/Preferences/com.Snipaste.plist'
end
