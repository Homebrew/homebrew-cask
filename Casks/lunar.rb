cask 'lunar' do
  version '2.0.3'
  sha256 '6cde68e195c1951da8b49c7de2abdc0a575a7bc1effced578d0b5a4febcb0aa3'

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
