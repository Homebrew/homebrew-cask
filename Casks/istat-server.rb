cask 'istat-server' do
  version '3.03'
  sha256 '0d6df9abe88aa7b29f53abb63413ede2853823cf6fd75b75818ef0190a07e8c7'

  # amazonaws.com/bjango was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bjango/files/istatserver#{version.major}/istatserver#{version}.zip"
  name 'iStat Server'
  homepage 'https://bjango.com/istatserver/'

  app 'iStat Server.app'
end
