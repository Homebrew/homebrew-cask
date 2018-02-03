cask 'appshelf' do
  version '2.3.5'
  sha256 '58e7e90dc5f81e296680434693e37d8cd3d09f1ef847249bd5457fd4c05ffb5f'

  url "http://www.kedisoft.com/dl/appshelf/AppShelf-#{version}.dmg"
  appcast "http://www.kedisoft.com/appcasts/appshelf#{version.major}.xml",
          checkpoint: '38186b821588344b40b6de41e9463c06ff042a70c1e65ae82d54f5b4f22e4296'
  name 'AppShelf'
  homepage 'http://www.kedisoft.com/appshelf/'

  app 'AppShelf.app'

  zap trash: [
               '~/Library/Application Support/AppShelf',
               '~/Library/Caches/com.kedisoft.AppShelf',
               '~/Library/Preferences/com.kedisoft.AppShelf.plist',
             ]
end
