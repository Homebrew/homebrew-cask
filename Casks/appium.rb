cask 'appium' do
  version '1.5.0'
  sha256 '221187839a0218fbb3c6f254d3a0d070a5189d2fc7b9b3719fb74bdb2cc4d4bb'

  # github.com/appium/appium-desktop was verified as official when first introduced to the cask.
  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/appium-desktop-#{version}-mac.zip"
  appcast 'https://github.com/appium/appium-desktop/releases.atom',
          checkpoint: 'a20a5a20aeb11ce6010d65d3a5b4bd51710f67a4a3538bcc5a06812fce8a5176'
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
