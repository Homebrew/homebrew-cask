cask 'armory' do
  version '0.95.1'
  sha256 '9ec3803b914660c5fbecfd5b2d6e907f64d16f920cd648678137d307399beb8d'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/goatpig/BitcoinArmory/releases/download/v#{version}/armory_#{version}_osx.tar.gz"
  appcast 'https://github.com/goatpig/BitcoinArmory/releases.atom',
          checkpoint: '584efce1d00aab244bbd9d23bfb0e5150b7600c293160aca4ba0e57f144b3cd4'
  name 'Armory'
  homepage 'https://btcarmory.com/'

  app 'Armory.app'
end
