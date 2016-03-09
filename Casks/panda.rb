cask 'panda' do
  version '1.0.0'
  sha256 'b71faa052ea3c2eb02c62e698e5234259b2f5cc5a07cf78675bb1b017b26a63e'

  # github.com was verified as offical when first introduced to the cask
  url "https://github.com/pablosproject/Panda-Mac-app/releases/download/v#{version}/Panda.app.zip"
  appcast 'http://pandapp.pablosproject.com/updates/appcast/appcast.xml',
          checkpoint: 'b22489936ef3c40c5efcb566dd019e288909e03150b5b2846d78dc17cf2a6f34'
  name 'Panda'
  homepage 'http://pandapp.pablosproject.com/'
  license :apache

  auto_updates true

  app 'Panda.app'

  zap delete: [
                '~/Library/Caches/com.pablosproject.Panda',
                '~/Library/Preferences/com.pablosproject.Panda.plist',
              ]
end
