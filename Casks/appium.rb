cask 'appium' do
  version '1.6.1'
  sha256 'bdd19869aba715fe32b279b320224cc5940748072b3c1d781a3d3eeea39f5d15'

  # github.com/appium/appium-desktop was verified as official when first introduced to the cask.
  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/appium-desktop-#{version}-mac.zip"
  appcast 'https://github.com/appium/appium-desktop/releases.atom',
          checkpoint: '72505bd3b348b47a2f06d8c09f81a31f84ce5278e1a64e7c37e884d9ebe2850f'
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
