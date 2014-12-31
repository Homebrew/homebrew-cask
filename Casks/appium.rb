cask :v1 => 'appium' do
  version '1.2.2'
  sha256 'fb7b96244e6dbcdf4d580eae0262b2dec38c008e39ddee4654bb488037f24971'

  url "https://bitbucket.org/appium/appium.app/downloads/appium-#{version}.dmg"
  homepage 'http://appium.io'
  license :oss

  app 'Appium.app'
end
