cask :v1 => 'gitter' do
  version '1.162'
  sha256 'faeeba7c607a0faff20c613ffbaf3f98bde88de0e1c73a638dc20e6e915ba81c'

  url "https://update.gitter.im/osx/Gitter-#{version}.dmg"
  appcast 'https://update.gitter.im/osx/appcast.xml',
          :sha256 => 'dfee81f1a8d4bafa8e412145a58b6db603ec3f37604f7818ba7a3af7ef88004c'
  name 'Gitter'
  homepage 'https://gitter.im/'
  license :freemium

  app 'Gitter.app'

  postflight do
    suppress_move_to_applications
  end

  uninstall :quit => [
                      'com.troupe.gitter.mac.Gitter',
                      'com.troupe.gitter.mac.GitterHelperApp'
                     ]

  zap :delete => [
                  '~/Library/Application Support/Gitter',
                  '~/Library/Caches/com.troupe.gitter.mac.Gitter',
                  '~/Library/Preferences/com.troupe.gitter.mac.Gitter.plist',
                  '~/Library/Saved Application State/com.troupe.gitter.mac.Gitter.savedState'
                 ]
end
