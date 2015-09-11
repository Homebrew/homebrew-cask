cask :v1 => 'appium' do
  version '1.3.7'
  sha256 '13e79d5d4d19d8cbd47ebe4f672d616025c236e37bf32b3ca10364842415ed13'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/appium/appium.app/downloads/appium-#{version}.dmg"
  name 'Appium'
  homepage 'http://appium.io'
  license :apache

  app 'Appium.app'
end
