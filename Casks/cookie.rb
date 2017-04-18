cask 'cookie' do
  version '5.5.4'
  sha256 '1c0e8a707e61c2e196a59def6cd3f0b20c30f4375f0cc53d6cfd282fe743076d'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '01cd4eb983d2424d9c701b140027c98fad17fc0cb0493349c0e75ebfcfb7b8de'
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
