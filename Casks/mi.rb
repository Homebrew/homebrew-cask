cask 'mi' do
  version '3.0.1'
  sha256 'c8ff11f8b8836920d2db33a74e2c7a5aa53153772024dcd4fe9aae386725f44a'

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  appcast 'https://www.mimikaki.net/download/appcast.xml'
  name 'mi'
  homepage 'https://www.mimikaki.net/'

  depends_on macos: '>= :lion'

  app 'mi.app'

  zap trash: [
               '~/Library/Caches/net.mimikaki.mi',
               '~/Library/Preferences/net.mimikaki.mi.plist',
             ]
end
