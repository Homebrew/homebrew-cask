cask 'loopback' do
  version '2.0.0'
  sha256 'fcfe14e2fa66535cd4483fc05846d6535f4819f7ac9f84194abd579f3c5f1251'

  # d2oxtzozd38ts8.cloudfront.net/loopback was verified as official when first introduced to the cask
  url 'https://d2oxtzozd38ts8.cloudfront.net/loopback/download/Loopback.zip'
  appcast 'https://rogueamoeba.com/loopback/releasenotes.php'
  name 'Loopback'
  homepage 'https://rogueamoeba.com/loopback/'

  app 'Loopback.app'
end
