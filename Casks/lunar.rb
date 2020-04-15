cask 'lunar' do
  version '3.1.5'
  sha256 '67696ba7f0c752904fed5bcaa0efbff9331d6c18853d56c241927c7dc4f3f906'

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
