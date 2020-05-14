cask 'snipaste' do
  version '2.3.5-Beta'
  sha256 '3367b4a9db9d6862dcc93228e70603d2772fb39b082fbfd09dd1f05428aa3827'

  # bitbucket.org/liule/snipaste/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/liule/snipaste/downloads/Snipaste-#{version}.dmg"
  appcast 'https://www.snipaste.com/download.html'
  name 'Snipaste'
  homepage 'https://www.snipaste.com/'

  auto_updates true

  app 'Snipaste.app'

  uninstall quit: 'com.Snipaste'

  zap trash: '~/Library/Preferences/com.Snipaste.plist'
end
