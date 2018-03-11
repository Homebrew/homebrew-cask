cask 'appium' do
  version '1.4.1'
  sha256 '4d5363783638b3a6b1733bf9ed49746bd2990901327a91b2f659afc745faa594'

  # github.com/appium/appium-desktop was verified as official when first introduced to the cask.
  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/appium-desktop-#{version}-mac.zip"
  appcast 'https://github.com/appium/appium-desktop/releases.atom',
          checkpoint: '2095efbf50aa994fefa62ef7e2b99556a7a84d437efcc1e5659c2651199ea19a'
  name 'Appium Desktop'
  homepage 'https://appium.io/'

  app 'Appium.app'

  zap trash: [
               '~/Library/Application Support/appium-desktop',
               '~/Library/Preferences/io.appium.desktop.helper.plist',
               '~/Library/Preferences/io.appium.desktop.plist',
               '~/Library/Saved Application State/io.appium.desktop.savedState',
             ]
end
