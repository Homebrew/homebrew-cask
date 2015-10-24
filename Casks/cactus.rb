cask :v1 => 'cactus' do
  version '1.1.22'
  sha256 'af920f5f180b64731adef561a45213064c27830f5d9030d6a862f339ffc4e88c'

  url "http://update.cactusformac.com/static/downloads/Cactus-#{version}.zip"
  name 'Cactus'
  appcast 'http://update.cactusformac.com.s3-website-us-east-1.amazonaws.com/appcast.xml',
          :sha256 => '986a46c150f6d6cf402462b27ebf9630c968cb3f5e09aad1d79140030e528733'
  homepage 'http://cactusformac.com/'
  license :bsd

  app 'Cactus.app'

  zap :delete => [
                  '~/Library/Caches/com.nektar.Cactus',
                  '~/Library/Preferences/com.nektar.Cactus.LSSharedFileList.plist',
                  '~/Library/Preferences/com.nektar.Cactus.plist',
                 ]
end
