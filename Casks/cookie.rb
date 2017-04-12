cask 'cookie' do
  version '5.5.2'
  sha256 '55c32f562f42723a3f0366f6daefd6a1cada44822bd1afbc6f6b95bf1a998b51'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: 'c001f5edabb2efdc733c79d84de683f832c0f962dfe0499d23949a36d8271540'
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
