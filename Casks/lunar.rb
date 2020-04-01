cask 'lunar' do
  version '3.1.4'
  sha256 'f698589e23fdfb95c818b5369cb436b07e24aa6ab42969d6773b858dcac4fc77'

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
