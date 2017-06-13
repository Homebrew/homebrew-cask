cask 'airy' do
  version '3.2.175'
  sha256 '1664ab626a06652c2546101bad63a9ae19defa0e77e1218ff3290af3f6f2660d'

  url "http://www.eltima.com/download/airy-update/airy_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/airy-update/airy.xml',
          checkpoint: '6e57d84268b74bcb5fe180cf5fbf724b224585d99f0eea006e683a0fcd128239'
  name 'Airy'
  homepage 'https://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap delete: '~/Library/Preferences/com.eltima.Airy.plist'
end
