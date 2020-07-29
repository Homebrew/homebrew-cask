cask 'appium' do
  version '1.17.1-1'
  sha256 'c11fe0106972f43688fd850352b87d39b6e0b80e85a67e954eea30c903ed8421'

  # github.com/appium/appium-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/Appium-mac-#{version}.dmg"
  appcast 'https://github.com/appium/appium-desktop/releases.atom'
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
