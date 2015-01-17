cask :v1 => 'appium' do
  version '1.3.4'
  sha256 '6e35270bf93db653556a6be0132f1720d5642e817f927b2db394d106b2a37252'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/appium/appium.app/downloads/appium-#{version}.dmg"
  name 'Appium'
  homepage 'http://appium.io'
  license :oss

  app 'Appium.app'
end
