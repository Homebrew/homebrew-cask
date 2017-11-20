cask 'gyazo' do
  version '3.5.0'
  sha256 'b1123c34d967724687a17773ebed112d6a57832c45332c3f45f6a7ac0090c667'

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
