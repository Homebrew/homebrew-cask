cask 'cookie' do
  version '5.6.2'
  sha256 '89f2a23163e2df0fc4f735e4c16837e8c4c23084696e0fc799bc39126e2572e4'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: 'fdf03866527c677f5b884f1dd68372e0a3dd23981bb63f71b052ae9bfc9a602e'
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
