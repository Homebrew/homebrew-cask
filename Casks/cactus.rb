cask :v1 => 'cactus' do
  version '1.1.15'
  sha256 'afde5be210ca70a4488fa5d6086a7c25a1fc74208b88a56096c4e355de4b4c37'

  url "http://update.cactusformac.com/static/downloads/Cactus-#{version}.zip"
  name 'Cactus'
  appcast 'http://update.cactusformac.com.s3-website-us-east-1.amazonaws.com/appcast.xml',
          :sha256 => 'a8ebf23005cc09a8471aa253f2e45359ab337cf2e0f2c1db2fc8d304e78348df'
  homepage 'http://cactusformac.com/'
  license :bsd

  app 'Cactus.app'

  zap :delete => [
                  '~/Library/Caches/com.nektar.Cactus',
                  '~/Library/Preferences/com.nektar.Cactus.LSSharedFileList.plist',
                  '~/Library/Preferences/com.nektar.Cactus.plist',
                 ]
end
