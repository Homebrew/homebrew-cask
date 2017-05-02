cask 'armory' do
  version '0.95.1'
  sha256 '9ec3803b914660c5fbecfd5b2d6e907f64d16f920cd648678137d307399beb8d'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/goatpig/BitcoinArmory/releases/download/v#{version}/armory_#{version}_osx.tar.gz"
  appcast 'https://github.com/goatpig/BitcoinArmory/releases.atom',
          checkpoint: 'bf767eddf6993b33b66fd8803023597f83b280e3b25e870869b55a580d084ead'
  name 'Armory'
  homepage 'https://btcarmory.com/'

  app 'Armory.app'
end
