cask 'appium' do
  version '1.3.2'
  sha256 'b79132808c49505ecff5722c8144d6d09dc249f82d6e2ad5e7f944c0ab61a3d5'

  # github.com/appium/appium-desktop was verified as official when first introduced to the cask.
  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/appium-desktop-#{version}-mac.zip"
  appcast 'https://github.com/appium/appium-desktop/releases.atom',
          checkpoint: '25457d7ef33f1481950f4f5f13d5fd75a86a327e0827da1477c8c91949a5b60d'
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
