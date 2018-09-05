cask 'armory' do
  version '0.96.4'
  sha256 'dd7f778d4bcbe819336286312e826e822c9ca3c405e1b2cf6f2a7e0c75526d96'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/goatpig/BitcoinArmory/releases/download/v#{version}/armory_#{version}_osx.tar.gz"
  appcast 'https://github.com/goatpig/BitcoinArmory/releases.atom'
  name 'Armory'
  homepage 'https://btcarmory.com/'

  app 'Armory.app'
end
