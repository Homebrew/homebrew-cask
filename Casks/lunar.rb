cask 'lunar' do
  version '2.0.0'
  sha256 '88b98816f02a87f9748f3721aa71cc7170b476f9746df2a815413f191cc9d073'

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
