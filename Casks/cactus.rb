cask 'cactus' do
  version '1.1.22'
  sha256 'af920f5f180b64731adef561a45213064c27830f5d9030d6a862f339ffc4e88c'

  url "http://update.cactusformac.com/static/downloads/Cactus-#{version}.zip"
  appcast 'http://update.cactusformac.com.s3-website-us-east-1.amazonaws.com/appcast.xml'
  name 'Cactus'
  homepage 'http://cactusformac.com/'

  app 'Cactus.app'

  zap trash: [
               '~/Library/Caches/com.nektar.Cactus',
               '~/Library/Preferences/com.nektar.Cactus.LSSharedFileList.plist',
               '~/Library/Preferences/com.nektar.Cactus.plist',
             ]
end
