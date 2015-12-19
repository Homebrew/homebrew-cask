cask 'dukto' do
  version 'R6'
  sha256 '86f06ca92a28b5835cb3eaadfb09897f581a5da3fb8ee8246897b1bf4ee7348a'

  # sourceforge.net is the official download host per the vendor homepage
  url "https://downloads.sourceforge.net/sourceforge/dukto/Dukto#{version}-OSX.dmg"
  name 'Dukto'
  homepage 'http://www.msec.it/dukto/'
  license :oss

  app 'Dukto.app'
end
