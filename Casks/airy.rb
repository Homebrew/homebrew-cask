cask 'airy' do
  version '2.2.100'
  sha256 '5e0895a336c0eab4c15b422b5e0034a5d31ab90d1d4d63bdf8cd99ebc59f4868'

  url "http://www.eltima.com/download/airy-update/airy_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/airy-update/airy.xml',
          checkpoint: '1ddec6d47bc4ba2700ee228ba7fc8267a4284efb0d22442bf916a672af0f6c03'
  name 'Airy'
  homepage 'http://mac.eltima.com/youtube-downloader-mac.html'
  license :commercial

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap delete: '~/Library/Preferences/com.eltima.Airy.plist'
end
