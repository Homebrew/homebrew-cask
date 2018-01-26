cask 'cookie' do
  version '5.7.6'
  sha256 '35c1f356e3e8a8268359e6d7ef0db40cde72b2375339f4d61dea8881179a7227'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '18e40ad747a7e7753a5cbb736c21803b8a83d9d778c2ea2ebb471a6a2e20a3d8'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'

  depends_on macos: '>= :el_capitan'

  app 'Cookie.app'

  zap trash: [
               '~/Library/Application Scripts/com.sweetpproductions.Cookie5',
               '~/Library/Containers/com.sweetpproductions.Cookie5',
               '~/Library/Preferences/com.sweetpproductions.Cookie5.plist',
             ]
end
