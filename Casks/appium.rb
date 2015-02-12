cask :v1 => 'appium' do
  version '1.3.5'
  sha256 '88fb3d798e3a28452d8477f78d182b035116dcd1569e444bdf08603c927b73d7'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/appium/appium.app/downloads/appium-#{version}.dmg"
  name 'Appium'
  homepage 'http://appium.io'
  license :apache

  app 'Appium.app'
end
