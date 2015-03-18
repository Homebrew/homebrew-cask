cask :v1 => 'appium' do
  version '1.3.6'
  sha256 '76bc810e07aa629f4dbf07c37d46e7a94b61fa7ab128f8c9e763ad0d8e19e62b'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/appium/appium.app/downloads/appium-#{version}.dmg"
  name 'Appium'
  homepage 'http://appium.io'
  license :apache

  app 'Appium.app'
end
