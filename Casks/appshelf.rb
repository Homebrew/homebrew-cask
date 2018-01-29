cask 'appshelf' do
  version '2.1'
  sha256 'e46d7c7d58886f0a227bb0a0e054b329fd811db3f6c2f41129161b50cea45c4a'

  url "http://www.kedisoft.com/dl/appshelf/AppShelf-#{version}.dmg"
  appcast 'http://www.kedisoft.com/appcasts/appshelf.xml',
          checkpoint: '34bb64f1399beb10359de8943555dc8a3427a11914804fe863f2384745721df6'
  name 'AppShelf'
  homepage 'http://www.kedisoft.com/appshelf/'

  app 'AppShelf.app'

  zap trash: [
               '~/Library/Application Support/AppShelf',
               '~/Library/Caches/com.kedisoft.AppShelf',
               '~/Library/Preferences/com.kedisoft.AppShelf.plist',
             ]
end
