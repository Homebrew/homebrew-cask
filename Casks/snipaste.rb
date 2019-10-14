cask 'snipaste' do
  version '2.2.3-Beta'
  sha256 'a8849524a468e7542df91a75e45fea066147b4e0a0c53047f12ce26934b5a176'

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
