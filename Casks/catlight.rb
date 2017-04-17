cask 'catlight' do
  version '2.8.5'
  sha256 'f1387c0876e78361213ac2ca291cdf750916ad93a67fa9acc00accae92ae5b6d'

  url "https://www.catlight.io/dl/mac/beta/setup-#{version}.zip"
  name 'catlight'
  homepage 'https://catlight.io/'

  app 'Catlight.app'
end
