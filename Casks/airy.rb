cask :v1 => 'airy' do
  version '2.2.100'
  sha256 '5e0895a336c0eab4c15b422b5e0034a5d31ab90d1d4d63bdf8cd99ebc59f4868'

  url "http://www.eltima.com/download/airy-update/airy_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/airy-update/airy.xml',
          :sha256 => '98f576a9852e419e0fd84bfac51a059345f3b34e190311c8f9f681e5e57d9da3'
  name 'Airy'
  homepage 'http://mac.eltima.com/youtube-downloader-mac.html'
  license :commercial

  app 'Airy.app'

  uninstall :quit => 'com.eltima.Airy'

  zap :delete => '~/Library/Preferences/com.eltima.Airy.plist'
end
