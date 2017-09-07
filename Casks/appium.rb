cask 'appium' do
  version '1.1.1'
  sha256 'bdb212c3e71b47e0c36ed246cb3bc10e704cc50c3f87de0447cc111be317e7b2'

  # github.com/appium/appium-desktop was verified as official when first introduced to the cask.
  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/appium-desktop-#{version}-mac.zip"
  appcast 'https://github.com/appium/appium-desktop/releases.atom',
          checkpoint: '5f70b8d7cd1b44401759d741dc53d8776c9f67c052ede4c270c763bbab4e144e'
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
