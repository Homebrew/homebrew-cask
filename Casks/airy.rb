cask 'airy' do
  version '3.1.161'
  sha256 '6e4e6e9d2518bb5e35ea068bb2b799662628820ba5b3a79ac35feac53740291c'

  url "http://www.eltima.com/download/airy-update/airy_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/airy-update/airy.xml',
          checkpoint: '8ed67f546cb45334b6fa69f5823527747514f3d81653708597c16934ada1876e'
  name 'Airy'
  homepage 'http://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap delete: '~/Library/Preferences/com.eltima.Airy.plist'
end
