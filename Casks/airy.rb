cask 'airy' do
  version '3.0.152'
  sha256 'e6fb3c0a3b9d7fb824ba83fb9e6ddf54e0e03f556729a4eeeed009ad66f1b39d'

  url "http://www.eltima.com/download/airy-update/airy_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/airy-update/airy.xml',
          checkpoint: 'd257102427567379b8b4d40f1ef55cece284f24e2675a90c3650c5033ee1ffcc'
  name 'Airy'
  homepage 'http://mac.eltima.com/youtube-downloader-mac.html'
  license :commercial

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap delete: '~/Library/Preferences/com.eltima.Airy.plist'
end
