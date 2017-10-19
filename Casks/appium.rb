cask 'appium' do
  version '1.2.4'
  sha256 '0f86aa167c57777e3a37b963bd5cd2bc32b1f11f99e7e1149ad465fba16bf7f0'

  # github.com/appium/appium-desktop was verified as official when first introduced to the cask.
  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/appium-desktop-#{version}-mac.zip"
  appcast 'https://github.com/appium/appium-desktop/releases.atom',
          checkpoint: '8a202984328e38bb460b492bea32e345a0d309701f2677577851eda708f46b72'
  name 'Appium Desktop'
  homepage 'https://appium.io/'

  app 'Appium.app'

  zap delete: '~/Library/Saved Application State/io.appium.desktop.savedState',
      trash:  [
                '~/Library/Application Support/appium-desktop',
                '~/Library/Preferences/io.appium.desktop.helper.plist',
                '~/Library/Preferences/io.appium.desktop.plist',
              ]
end
