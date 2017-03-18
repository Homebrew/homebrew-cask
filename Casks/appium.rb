cask 'appium' do
  version '1.5.3'
  sha256 '1ab149ef4410d69ec757d435fd3613ab333ec69b09cdf6cf3800fe66731f71a4'

  # bitbucket.org/appium/appium.app was verified as official when first introduced to the cask
  url "https://bitbucket.org/appium/appium.app/downloads/appium-#{version}.dmg"
  name 'Appium'
  homepage 'https://appium.io/'

  app 'Appium.app'

  zap delete: [
                '~/Library/Preferences/com.appium.Appium.plist',
                '~/Library/Caches/com.appium.Appium',
              ]
end
