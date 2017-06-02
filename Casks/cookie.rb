cask 'cookie' do
  version '5.5.7'
  sha256 'd05910dd83ecc29cc86cf0b41734ab9966b39d02a34ca4be3b84189a46c1144d'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '317a3aa39107b8c2bb6ef8a638c51af7ea1f409f05a33609e749a70a0881868b'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'

  depends_on macos: '>= :el_capitan'

  app 'Cookie.app'

  zap delete: [
                '~/Library/Application Scripts/com.sweetpproductions.Cookie5',
                '~/Library/Containers/com.sweetpproductions.Cookie5',
                '~/Library/Preferences/com.sweetpproductions.Cookie5.plist',
              ]
end
