cask :v1 => 'airy' do
  version '2.1.89'
  sha256 'd76074e847571f724861e28ded5493746e9b24af5d99d4224d4d106b15a65908'

  url "http://www.eltima.com/download/airy-update/airy_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/airy-update/airy.xml',
          :sha256 => '099e2432d465417c5eb2936ce233505afe1a9f7caad21847f8c9d09b2333187d'
  name 'Airy'
  homepage 'http://mac.eltima.com/youtube-downloader-mac.html'
  license :commercial

  app 'Airy.app'

  uninstall :quit => 'com.eltima.Airy'

  zap :delete => '~/Library/Preferences/com.eltima.Airy.plist'
end
