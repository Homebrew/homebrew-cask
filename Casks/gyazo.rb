cask 'gyazo' do
  version '3.2.1'
  sha256 'e803fe99ee20a13889727556c3b85624a555d3dda7e45436a0c9fe48a5a840d6'

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
