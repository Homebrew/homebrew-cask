cask 'shortcat' do
  version '0.7.10'
  sha256 '02744ac4837cf50aee8a2441c660ea65cea21fd6740006dbd13e5ca27c70ec6b'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  appcast 'https://shortcatapp.com/updates/appcast.xml'
  name 'Sproutcube Shortcat'
  homepage 'https://shortcatapp.com/'

  app 'Shortcat.app'

  zap trash: [
               '~/Library/Application Support/Shortcat',
               '~/Library/Cookies/com.sproutcube.Shortcat.binarycookies',
               '~/Library/Preferences/com.sproutcube.Shortcat.plist',
             ]
end
