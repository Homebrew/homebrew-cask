cask :v1 => 'airy' do
  version '2.2.98'
  sha256 'abfa6b5dd1998fac5709873697e22abc732fa7816868ec8024512ecbf47c840c'

  url "http://www.eltima.com/download/airy-update/airy_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/airy-update/airy.xml',
          :sha256 => '7cf4ae5c7282eb89662dcfc7a40449e88fad97e191669f26f3dfe2e4e5eb9644'
  name 'Airy'
  homepage 'http://mac.eltima.com/youtube-downloader-mac.html'
  license :commercial

  app 'Airy.app'

  uninstall :quit => 'com.eltima.Airy'

  zap :delete => '~/Library/Preferences/com.eltima.Airy.plist'
end
