cask 'appium' do
  version '1.6.3'
  sha256 '3b68e4f51a232b78f6c7f6e7f5b0d56da607680665564d4891f1716bd1dd5ac4'

  # github.com/appium/appium-desktop was verified as official when first introduced to the cask.
  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/appium-desktop-#{version}-mac.zip"
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
