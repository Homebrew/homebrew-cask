cask 'cookie' do
  version '5.7.8'
  sha256 '63801b2d4d131144288e93ffe153387b476999a53082ddeeb40ac50c876fdadf'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '6969215d725d499c2945fe6d0a2d9a6f147ac13f4ec33b594d03ae1fdf04e9e0'
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
