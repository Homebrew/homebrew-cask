cask 'cookie' do
  version '5.6.3'
  sha256 '2d223002348b1626e92abbad06a37cc13ae59acbc6ee6f5b16be2a1533d72519'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: 'ed13cca9c8fc008c4ef42264cad0b2a45b5ff6a1e0c96513961da68b4277046d'
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
