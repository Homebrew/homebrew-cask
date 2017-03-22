cask 'istat-server' do
  version '3.02'
  sha256 '032a1f51bd34e850b0f930676361606a6b260cc0b7b35d9a1bca390a87d2bf41'

  # amazonaws.com/bjango was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bjango/files/istatserver#{version.major}/istatserver#{version}.zip"
  name 'iStat Server'
  homepage 'https://bjango.com/istatserver/'

  app 'iStat Server.app'
end
