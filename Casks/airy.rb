cask 'airy' do
  version :latest
  sha256 :no_check

  url 'http://mac.eltima.com/download/airy.dmg'
  appcast 'http://airy-youtube-downloader.com/download/airy-update/airy.xml',
          checkpoint: '2db958ecb1fefedc7d85dab551194de72d8e4ac413b56b609b7fef1b50aebeed'
  name 'Airy'
  homepage 'http://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap delete: '~/Library/Preferences/com.eltima.Airy.plist'
end
