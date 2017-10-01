cask 'cookie' do
  version '5.6.1'
  sha256 'a8e0902cbf5d65d4cbb9e79fb9412d241b2b3dc6769774f82ba201ecfe94aa51'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: 'fac18c823b408f9c3833b5b8703ee508a99e031bc9d93c58ee9ca64d38c7a429'
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
