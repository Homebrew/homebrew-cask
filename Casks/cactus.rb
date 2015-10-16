cask :v1 => 'cactus' do
  version '1.1.18'
  sha256 'ae19cfaaf1995da09041e30b53061f6d3572c7dd35a607090118a54c502adb90'

  url "http://update.cactusformac.com/static/downloads/Cactus-#{version}.zip"
  name 'Cactus'
  appcast 'http://update.cactusformac.com.s3-website-us-east-1.amazonaws.com/appcast.xml',
          :sha256 => '5fa42be56b7d6ace4fd7697a70f2b03daa33ad57bcc3178b2b28f106de8508a8'
  homepage 'http://cactusformac.com/'
  license :bsd

  app 'Cactus.app'

  zap :delete => [
                  '~/Library/Caches/com.nektar.Cactus',
                  '~/Library/Preferences/com.nektar.Cactus.LSSharedFileList.plist',
                  '~/Library/Preferences/com.nektar.Cactus.plist',
                 ]
end
