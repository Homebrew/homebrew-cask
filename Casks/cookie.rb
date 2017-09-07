cask 'cookie' do
  version '5.5.8'
  sha256 'f6835442c37b5e2ab346c99fcd0c269b78b4fc3b5b3eac820752d0e66428ca66'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '452c6e76fc11f28b6de0a45a0cf5fd69db3803175206eef4cc35efae6c6c1c09'
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
