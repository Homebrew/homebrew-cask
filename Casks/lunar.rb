cask 'lunar' do
  version '2.1.0'
  sha256 '612192931fb81efb2b900b1829a45675ee005d75fea4d74f9906cc11315d492b'

  url "https://lunarapp.site/Lunar-#{version}.dmg"
  appcast 'https://lunarapp.site/appcast.xml'
  name 'Lunar'
  homepage 'https://lunarapp.site/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Lunar.app'

  zap trash: [
               '~/Library/Application Support/Lunar',
               '~/Library/Application Support/site.lunarapp.Lunar',
               '~/Library/Preferences/site.lunarapp.Lunar.plist',
             ]
end
