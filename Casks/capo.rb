cask :v1 => 'capo' do
  version '3.0.3'
  sha256 'ab70d7ba4965cca146507ebbb3ad874b9f67efde11c2b84de58712d7e1c3391b'

  url "https://s3.amazonaws.com/capo/Capo-#{version}.zip"
  homepage 'http://supermegaultragroovy.com/products/Capo/'
  license :unknown    # todo: improve this machine-generated value

  app 'Capo.app'
end
