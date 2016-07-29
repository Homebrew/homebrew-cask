cask 'airy' do
  version '2.3.134'
  sha256 'b2de0977ce59b60ebfd9ba3f49843398d582d11728792d1920965a8626c542af'

  url "http://www.eltima.com/download/airy-update/airy_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/airy-update/airy.xml',
          checkpoint: 'd432bde22756a99a8faa5a3db8d7d3a17a36200c9ce00d3153a20cbfb7f75137'
  name 'Airy'
  homepage 'http://mac.eltima.com/youtube-downloader-mac.html'
  license :commercial

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap delete: '~/Library/Preferences/com.eltima.Airy.plist'
end
