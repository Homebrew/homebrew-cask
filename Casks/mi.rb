cask 'mi' do
  version '3.0.3'
  sha256 'c8b6d0c8ef7954b45f92544b33fa5605437dec239168ee4ac6f6751c85a87762'

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
