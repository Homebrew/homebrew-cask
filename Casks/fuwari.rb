cask 'fuwari' do
  version '0.3'
  sha256 '1542069425d44d49c5b06690fccb0e52fcd66fab2bf58ed0ca7b3fe70e03ce06'

  # github.com/kentya6/Fuwari was verified as official when first introduced to the cask
  url "https://github.com/kentya6/Fuwari/releases/download/v#{version}/Fuwari_#{version}.dmg"
  appcast 'https://github.com/kentya6/Fuwari/releases.atom',
          checkpoint: '3c4b5d021ab65b728c4b90f12f44b800ad89bb7e3894900991c28ad2a579f0ed'
  name 'Fuwari'
  homepage 'https://fuwari-app.com/'

  app 'Fuwari.app'

  uninstall login_item: 'Fuwari',
            quit:       'com.appknop.Fuwari'

  zap trash: [
               '~/Library/Application Support/com.appknop.Fuwari',
               '~/Library/Caches/com.appknop.Fuwari',
               '~/Library/Caches/com.crashlytics.data/com.appknop.Fuwari',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.appknop.Fuwari',
               '~/Library/Preferences/com.appknop.Fuwari.plist',
             ]
end
