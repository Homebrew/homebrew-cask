cask 'gyazo' do
  version '3.6.2'
  sha256 '1397ccd966cbe3200f1b1827f8104dc5d0f7ca2cf6fb31a0fcaa9e15ee663d8a'

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
