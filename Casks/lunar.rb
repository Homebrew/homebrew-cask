cask 'lunar' do
  version '3.2.0'
  sha256 '963e1bda1eeb8ee3cf009ce7bda1866b1bb755c12ed50c8bf27ccd95e4e985bb'

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
