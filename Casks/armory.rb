cask 'armory' do
  version '0.95.1'
  sha256 '9ec3803b914660c5fbecfd5b2d6e907f64d16f920cd648678137d307399beb8d'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/goatpig/BitcoinArmory/releases/download/v#{version}/armory_#{version}_osx.tar.gz"
  appcast 'https://github.com/goatpig/BitcoinArmory/releases.atom',
          checkpoint: '3650cdbcaf57b8fb06c09bd27298682479ba0ffedd12d287c0a017bb1619dd86'
  name 'Armory'
  homepage 'https://btcarmory.com/'

  app 'Armory.app'
end
