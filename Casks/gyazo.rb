cask 'gyazo' do
  version '3.7.2'
  sha256 '26afac02a3ea7feeb093d89d571e27050466690084ca6acf39168f9457fb6fb6'

  url "https://files.gyazo.com/setup/Gyazo-#{version}.dmg"
  appcast 'https://gyazo.com/api/gy_mac.xml'
  name 'Nota Gyazo GIF'
  homepage 'https://gyazo.com/'

  app 'Gyazo.app'
  app 'Gyazo GIF.app'

  zap trash: [
               '~/Library/Caches/com.gyazo.gif',
               '~/Library/Caches/com.gyazo.mac',
               '~/Library/Preferences/com.gyazo.gif.plist',
               '~/Library/Preferences/com.gyazo.mac.plist',
             ]
end
