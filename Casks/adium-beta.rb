cask 'adium-beta' do
  version '1.5.11b3'
  sha256 '999e1931a52dc327b3a6e8492ffa9df724a837c88ad9637a501be2e3b6710078'

  url "http://download.adium.im/Adium_#{version}.dmg"
  name 'Adium-beta'
  homepage 'https://www.adium.im/'

  auto_updates true

  app 'Adium.app'

  zap trash: [
               '~/Library/Application Support/Adium 2.0',
               '~/Library/Caches/Adium',
               '~/Library/Caches/com.adiumX.adiumX',
               '~/Library/Preferences/com.adiumX.adiumX.plist',
             ]
end
