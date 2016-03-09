cask 'gitter' do
  version '1.162'
  sha256 'faeeba7c607a0faff20c613ffbaf3f98bde88de0e1c73a638dc20e6e915ba81c'

  url "https://update.gitter.im/osx/Gitter-#{version}.dmg"
  appcast 'https://update.gitter.im/osx/appcast.xml',
          checkpoint: '2ede75afab8a6d0ee210863c3ac4b61381d899aff068a3e343d703ac84ece7e5'
  name 'Gitter'
  homepage 'https://gitter.im/'
  license :freemium

  app 'Gitter.app'

  postflight do
    suppress_move_to_applications
  end

  uninstall quit: [
                    'com.troupe.gitter.mac.Gitter',
                    'com.troupe.gitter.mac.GitterHelperApp',
                  ]

  zap delete: [
                '~/Library/Application Support/Gitter',
                '~/Library/Caches/com.troupe.gitter.mac.Gitter',
                '~/Library/Preferences/com.troupe.gitter.mac.Gitter.plist',
                '~/Library/Saved Application State/com.troupe.gitter.mac.Gitter.savedState',
              ]
end
