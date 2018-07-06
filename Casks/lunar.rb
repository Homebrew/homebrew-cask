cask 'lunar' do
  version '1.0.3'
  sha256 '8037ffbb8effcc02af61495c03ceed63c48cbd12b2719c07f5ce089f37c0e163'

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
