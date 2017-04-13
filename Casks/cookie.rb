cask 'cookie' do
  version '5.5.2'
  sha256 'd3ad957ebb7519a1d2bc59146cb14475f6b5311b96e70ef1c293bd2714a91827'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '554b0b2d1295ae1a7cd454289b42968ba4d5efadadb5ec9a7e0c0d0944b18331'
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
