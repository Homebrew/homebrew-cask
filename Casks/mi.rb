cask 'mi' do
  version '3.0.3r1'
  sha256 'dd711bbba83663757076ecd62104ef439682d9006f29daa859ff5e6cfc3ed209'

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
