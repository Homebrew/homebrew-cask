cask 'cactus' do
  version '1.1.22'
  sha256 'af920f5f180b64731adef561a45213064c27830f5d9030d6a862f339ffc4e88c'

  url "http://update.cactusformac.com/static/downloads/Cactus-#{version}.zip"
  appcast 'http://update.cactusformac.com.s3-website-us-east-1.amazonaws.com/appcast.xml',
          checkpoint: '4a09054e73a1272707e4ae35eb0e9281a269877f660c708f6e426a3250bba342'
  name 'Cactus'
  homepage 'http://cactusformac.com/'
  license :bsd

  app 'Cactus.app'

  zap delete: [
                '~/Library/Caches/com.nektar.Cactus',
                '~/Library/Preferences/com.nektar.Cactus.LSSharedFileList.plist',
                '~/Library/Preferences/com.nektar.Cactus.plist',
              ]
end
