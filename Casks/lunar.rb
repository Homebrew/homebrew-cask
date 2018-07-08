cask 'lunar' do
  version '1.1.1'
  sha256 '7474f233644b872f5864d33ec8a7508484725c077ce227836e7ffea272d67e77'

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
