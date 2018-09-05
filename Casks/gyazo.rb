cask 'gyazo' do
  version '3.6.0'
  sha256 '96b5dd8e1ffe7869b039222b748bc3a4e4455381abcbc422f12a2f9c6c2172b6'

  url "https://files.gyazo.com/setup/Gyazo-#{version}.dmg"
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
