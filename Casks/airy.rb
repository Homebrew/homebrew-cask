cask 'airy' do
  version '3.8,214'
  sha256 'b8214b8518118d104a4d2ca65d6fea272f3de2c86e3fc9a32d03f465c0afdafb'

  url 'https://cdn.eltima.com/download/airy.dmg'
  appcast 'https://cdn.eltima.com/download/airy-update/airy.xml'
  name 'Airy'
  homepage 'https://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap trash: '~/Library/Preferences/com.eltima.Airy.plist'
end
