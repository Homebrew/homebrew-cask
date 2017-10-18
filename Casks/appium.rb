cask 'appium' do
  version '1.2.3'
  sha256 '2b320877b53bd5144a54ddcc240d6a6c4622076656fcdeb2e65deec54a656767'

  # github.com/appium/appium-desktop was verified as official when first introduced to the cask.
  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/appium-desktop-#{version}-mac.zip"
  appcast 'https://github.com/appium/appium-desktop/releases.atom',
          checkpoint: 'd3c8fb1ae5b7cf9c5102e64a576e3afc992c1d8417bafc67e2f4ba320d6b8499'
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
