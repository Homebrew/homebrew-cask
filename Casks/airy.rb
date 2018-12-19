cask 'airy' do
  version '3.6,200'
  sha256 '0cc3c34b6e7b1fa567ca5d2d0968fbb56aada7b9a5d81d2e61bba8fcf169d1f6'

  url 'https://cdn.eltima.com/download/airy.dmg'
  appcast 'https://cdn.eltima.com/download/airy-update/airy.xml'
  name 'Airy'
  homepage 'https://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap trash: '~/Library/Preferences/com.eltima.Airy.plist'
end
