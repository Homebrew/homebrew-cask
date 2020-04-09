cask 'airy' do
  version '3.13,268'
  sha256 'c27bda3500fc038e3143bd2bc6bbde59e5f0298a0bc41ee6a4db005a66f1d53f'

  url 'https://cdn.eltima.com/download/airy.dmg'
  appcast 'https://cdn.eltima.com/download/airy-update/airy.xml'
  name 'Airy'
  homepage 'https://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap trash: '~/Library/Preferences/com.eltima.Airy.plist'
end
