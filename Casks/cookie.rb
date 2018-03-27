cask 'cookie' do
  version '5.7.9'
  sha256 '06c47184885232985d39404ce81c3211389342d7e376b07010293dc5e55bf60e'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: 'ace352945cade845b7b70b08b2c2d7045116ccb8a025a9b69dba780261621ace'
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
