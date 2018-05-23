cask 'fuwari' do
  version '0.4'
  sha256 'e6cd64a016f86ec363bcdaf99e5ae2613fc8b03fb293ab7066e7c2d39bd2baed'

  # github.com/kentya6/Fuwari was verified as official when first introduced to the cask
  url "https://github.com/kentya6/Fuwari/releases/download/v#{version}/Fuwari_#{version}.dmg"
  appcast 'https://github.com/kentya6/Fuwari/releases.atom',
          checkpoint: 'd0c33c84d8a087a6547d2eef6014ff19f74fd0b33083c936a1c21883441a5a04'
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
