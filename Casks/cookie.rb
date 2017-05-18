cask 'cookie' do
  version '5.5.6'
  sha256 '16135c083232d8a540232975edb5e25c7ac4e2d9838e0d0f3b880dcd25a136cb'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '67f963d7e7a91e07ace7dcce39809f996474ff921f1c0c49f0f13750a8328ceb'
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
