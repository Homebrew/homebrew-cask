cask :v1 => 'gyazo' do
  version '2.1'
  sha256 '88491cc2a9d481fdb99b822ca49560427ed11578b304203c4504d83fc2562061'

  url "https://files.gyazo.com/setup/Gyazo_#{version}.dmg"
  name 'Gyazo'
  name 'Gyazo GIF'
  homepage 'https://gyazo.com/'
  license :other
  tags :vendor => 'Nota'

  zap :delete => [
    '~/Library/Caches/com.gyazo.gif',
    '~/Library/Caches/com.gyazo.mac',
    '~/Library/Preferences/com.gyazo.gif.plist',
    '~/Library/Preferences/com.gyazo.mac.plist'
  ]

  app 'Gyazo.app'
  app 'Gyazo GIF.app'
end
