cask 'cookie' do
  version '5.7.3'
  sha256 '374f0e331213a9d2e0f4356a97909f73c80e243afae50450dba46e5a043b8c9d'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: 'a3bb6a666199d78d8a030291bf61a902ba4eec9d755c262013785789a9cfd211'
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
