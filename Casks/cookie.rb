cask 'cookie' do
  version '5.8.3'
  sha256 'ed806ec129f8b97dc68dd182b6293af5ce4d3fa8986a957036f6e0a73045e5f6'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '557148239d36f8d3c2ec79b6fa8755c9a242a1a590c8381c16c30b2957966fd9'
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
