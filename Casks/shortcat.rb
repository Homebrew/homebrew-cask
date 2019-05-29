cask 'shortcat' do
  version '0.7.9'
  sha256 'a6fb545f12783cde33f3b50b393e77bb721c32446dbf37fc71bb7a7a6a9b427e'

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
