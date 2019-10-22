cask 'airy' do
  version '3.10,242'
  sha256 '1c3affa1995c6a7bf8ef341f1bd51c30f201bd007f14c863fe43e6c569229076'

  url 'https://cdn.eltima.com/download/airy.dmg'
  appcast 'https://cdn.eltima.com/download/airy-update/airy.xml'
  name 'Airy'
  homepage 'https://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap trash: '~/Library/Preferences/com.eltima.Airy.plist'
end
