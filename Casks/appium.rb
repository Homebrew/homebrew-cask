cask 'appium' do
  version '1.1.1'
  sha256 'bdb212c3e71b47e0c36ed246cb3bc10e704cc50c3f87de0447cc111be317e7b2'

  # github.com/appium/appium-desktop was verified as official when first introduced to the cask.
  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/appium-desktop-#{version}-mac.zip"
  appcast 'https://github.com/appium/appium-desktop/releases.atom',
          checkpoint: '7d0ddbc3fae9396cb02d4cea56dead044c1055b9f09c5f061275f8be922f8fb3'
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
