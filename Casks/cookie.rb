cask 'cookie' do
  version '5.5.1'
  sha256 '736d6899d546fccecf866531d26f59d8a6d46647f2b78f7f9a7d79421b26faf8'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '206a51c513c4916f070e3c3cbb7d4193bbd3337958f9fd12ea335adbc4df00cd'
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
