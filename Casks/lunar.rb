cask 'lunar' do
  version '3.2.1'
  sha256 'b69c38b155e88e83bd6aa2a51d570d6a793142f97984bd8c99396d41c87e2c6a'

  url "https://lunar.fyi/download/#{version}"
  appcast 'https://lunar.fyi/appcast.xml'
  name 'Lunar'
  homepage 'https://lunar.fyi/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Lunar.app'

  zap trash: [
               '~/Library/Application Support/Lunar',
               '~/Library/Application Support/site.lunarapp.Lunar',
               '~/Library/Preferences/site.lunarapp.Lunar.plist',
             ]
end
