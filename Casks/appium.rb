cask 'appium' do
  version '1.14.0'
  sha256 'c14146714c4b835f17264b790f6a9e07180186d4077a60b83daf61112c6b33bf'

  # github.com/appium/appium-desktop was verified as official when first introduced to the cask.
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
