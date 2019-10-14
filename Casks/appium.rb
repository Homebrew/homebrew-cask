cask 'appium' do
  version '1.15.0-1'
  sha256 '2f894dc5c3e5141086f663a98e94dd6b3cccd9120922658dc5ff0165255aaabb'

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
