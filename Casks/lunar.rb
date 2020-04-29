cask 'lunar' do
  version '3.2.2'
  sha256 'c7d0e216adf9ce5533e97833596093453b4fc26eed4ca5f52b2c1b30676de3bc'

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
