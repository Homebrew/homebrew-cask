cask 'appium' do
  version '1.2.1'
  sha256 '8756e06548a88b4880e96ca6bbf37649ce112c505049b28242e7995510d52d19'

  # github.com/appium/appium-desktop was verified as official when first introduced to the cask.
  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/appium-desktop-#{version}-mac.zip"
  appcast 'https://github.com/appium/appium-desktop/releases.atom',
          checkpoint: 'ecb6e6300a924b2c7dd1eb4996c0580ad68bbba48c22595bd28fb74f56dca844'
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
