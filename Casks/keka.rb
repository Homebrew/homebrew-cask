cask 'keka' do
  version '1.0.7'
  sha256 '92d05db46ba32e656992d2f9699e328b94dee058e573da3147865f3993bbe579'

  url "http://www.kekaosx.com/release/Keka-#{version}.dmg"
  appcast 'http://www.kekaosx.com/update/keka.xml',
          checkpoint: '772e4f21cf3ba63c4b2d9a10a8419b680a74464fadaead8b70380ad677410546'
  name 'Keka'
  homepage 'http://www.kekaosx.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Keka.app'

  zap delete: [
                '~/Library/Application Support/Keka',
                '~/Library/Caches/com.aone.keka',
                '~/Library/Preferences/com.aone.keka.plist',
                '~/Library/Saved Application State/com.aone.keka.savedState',
              ]
end
