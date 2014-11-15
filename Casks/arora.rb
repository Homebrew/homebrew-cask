cask :v1 => 'arora' do
  version '0.10.1'
  sha256 '7cd9d54beb326dbb1a3eebaee1f5252a2df611d738f90d1398e857812ffc49ac'

  url "https://arora.googlecode.com/files/Arora%20#{version}%20Intel-Qt4.5.3.dmg"
  homepage 'https://code.google.com/p/arora/'
  license :oss

  app 'Arora.app'
end
