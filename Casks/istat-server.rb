cask 'istat-server' do
  version '3.00'
  sha256 'd28fcc1751e308ca81cdd5255e8c2be54eaa5dc06957ca099b050733b99765f9'

  # amazonaws.com/bjango was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bjango/files/istatserver#{version.major}/istatserver#{version}.zip"
  name 'iStat Server'
  homepage 'https://bjango.com/mac/istatserver/'

  app 'iStat Server.app'
end
