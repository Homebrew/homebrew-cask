cask 'airy' do
  version '3.1.164'
  sha256 'd1a5b9955f39b77bac316e6a81e71c75cc1a33bb60664743daa0b498af165ebf'

  url "http://www.eltima.com/download/airy-update/airy_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/airy-update/airy.xml',
          checkpoint: 'cc1034a738b9dcd332f6b49a89d860fc996af7ed50332331921eebf220765cb5'
  name 'Airy'
  homepage 'http://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap delete: '~/Library/Preferences/com.eltima.Airy.plist'
end
