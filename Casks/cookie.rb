cask 'cookie' do
  version '5.7.4'
  sha256 'a3cce6d81cc4feb39bf3276fb8d7f4f7097871c3c09a559a6b2859fffead8df5'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: 'bdaba56685406144e10935168453c8263d5eb3ea2754215436656df73607d3cd'
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
