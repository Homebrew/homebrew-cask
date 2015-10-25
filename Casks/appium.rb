cask :v1 => 'appium' do
  version '1.4.8'
  sha256 'c9dbebe84794dc17278a2229d873ae68405471ec24c6c71f3b8fbf94d4c7dba7'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/appium/appium.app/downloads/appium-#{version}.dmg"
  name 'Appium'
  homepage 'http://appium.io'
  license :apache

  app 'Appium.app'
end
