cask 'gyazo' do
  version '3.4.1'
  sha256 'a2c34b446a58f3038f7cec6dc52dfd3618538145b1c65ceddbf25d19b31c4224'

  url "https://files.gyazo.com/setup/Gyazo-#{version}.dmg"
  name 'Nota Gyazo GIF'
  homepage 'https://gyazo.com/'

  app 'Gyazo.app'
  app 'Gyazo GIF.app'

  zap delete: [
                '~/Library/Caches/com.gyazo.gif',
                '~/Library/Caches/com.gyazo.mac',
                '~/Library/Preferences/com.gyazo.gif.plist',
                '~/Library/Preferences/com.gyazo.mac.plist',
              ]
end
