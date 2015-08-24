cask :v1 => 'airy' do
  version :latest
  sha256 :no_check

  url 'http://mac.eltima.com/download/airy.dmg'
  name 'Airy'
  homepage 'http://mac.eltima.com/youtube-downloader-mac.html'
  license :freemium

  app 'Airy.app'

  uninstall :quit => 'com.eltima.Airy'

  zap :delete => '~/Library/Preferences/com.eltima.Airy.plist'
end
