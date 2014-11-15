cask :v1 => 'dukto' do
  version 'R6'
  sha256 '86f06ca92a28b5835cb3eaadfb09897f581a5da3fb8ee8246897b1bf4ee7348a'

  url "https://dukto.googlecode.com/files/Dukto#{version}-OSX.dmg"
  homepage 'https://code.google.com/p/dukto/'
  license :oss

  app 'Dukto.app'
end
