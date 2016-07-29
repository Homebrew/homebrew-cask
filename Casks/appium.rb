cask 'appium' do
  version '1.5.2'
  sha256 'f1fb354c8b48d566a0d186513c11359dcc68c4a04947f2a370875344bc38094d'

  # bitbucket.org/appium/appium.app was verified as official when first introduced to the cask
  url "https://bitbucket.org/appium/appium.app/downloads/appium-#{version}.dmg"
  name 'Appium'
  homepage 'http://appium.io'
  license :apache

  app 'Appium.app'
end
