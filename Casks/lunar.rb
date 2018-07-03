cask 'lunar' do
  version '1.0.0'
  sha256 'd6d5e6d0f1aea04872ccc50b8698bb18992a0ae46d7f450e5be6eb832635a733'

  url 'https://lunarapp.site/Lunar.dmg'
  appcast 'https://lunarapp.site/appcast.xml'
  name 'Lunar'
  homepage 'https://lunarapp.site'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Lunar.app'

  zap trash: [
                 '~/Library/Application Support/Lunar',
                 '~/Library/Application Support/site.lunarapp.Lunar',
                 '~/Library/Preferences/site.lunarapp.Lunar.plist'
             ]
end
