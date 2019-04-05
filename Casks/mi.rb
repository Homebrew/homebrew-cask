cask 'mi' do
  version '3.0.2'
  sha256 '463c767ba718c677547e8cfa8a9ac5f3ec9aaf478222fa1931aa3a4ca5dbf7e5'

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  appcast 'https://www.mimikaki.net/download/appcast.xml'
  name 'mi'
  homepage 'https://www.mimikaki.net/'

  app 'mi.app'

  zap trash: [
               '~/Library/Caches/net.mimikaki.mi',
               '~/Library/Preferences/net.mimikaki.mi.plist',
             ]
end
