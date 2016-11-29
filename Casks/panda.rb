cask 'panda' do
  version '1.4.2'
  sha256 '551a2f4c2195dd1c00e7dfe83836a86485212ebeb6b008f130cecb83e002e3b8'

  # github.com/pablosproject/Panda-Mac-app was verified as official when first introduced to the cask
  url "https://github.com/pablosproject/Panda-Mac-app/releases/download/#{version}/Panda.zip"
  appcast 'http://pandapp.pablosproject.com/updates/appcast/appcast.xml',
          checkpoint: '987cf7ea8613c260111c8a924f59e6c4b76801a10feacdfcf63d0b5ccffcbbde'
  name 'Panda'
  homepage 'http://pandapp.pablosproject.com/'

  auto_updates true

  app 'Panda.app'

  zap delete: [
                '~/Library/Caches/com.pablosproject.Panda',
                '~/Library/Preferences/com.pablosproject.Panda.plist',
              ]
end
