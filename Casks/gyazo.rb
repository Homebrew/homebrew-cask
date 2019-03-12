cask 'gyazo' do
  version '3.7.1'
  sha256 '0cee868e24d93d0defa172abd04e6349e47736a9ec5d175e251f3bbf87274bc0'

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
