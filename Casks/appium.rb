cask 'appium' do
  version '1.4.13'
  sha256 'c26fcd668c872b1f015d1c216a3883c7ccce16e399ffd29d7abef135fda6cbba'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/appium/appium.app/downloads/appium-#{version}.dmg"
  name 'Appium'
  homepage 'http://appium.io'
  license :apache

  app 'Appium.app'
end
