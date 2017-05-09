cask 'cookie' do
  version '5.5.5'
  sha256 '77a277334b9a0b778d3331edf10a0ac6f23362b38e0e2b945e5901707f1ab11a'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '66fabb071390a5b29803ac922a9d57c0d7cba146a6b1120f8e45d99a5adf271e'
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
