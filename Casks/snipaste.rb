cask 'snipaste' do
  version '2.2.4-Beta'
  sha256 'c4ac186143f3ee1ba5af2fdec82193ede6812764dbe4f8f2bac78fbbdb2bf633'

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
