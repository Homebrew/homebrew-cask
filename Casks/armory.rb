cask 'armory' do
  version '0.96.3.99'
  sha256 '6129856a042b153185a06f0745cf5313477191cc89a8f8c3e5dc08fa0b49c8a0'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/goatpig/BitcoinArmory/releases/download/v#{version}/armory_#{version}_osx.tar.gz"
  appcast 'https://github.com/goatpig/BitcoinArmory/releases.atom',
          checkpoint: '4f71fb59453d47d90216ac261bffe9c3c1760b62bacc32fe19f637711e5cf4f8'
  name 'Armory'
  homepage 'https://btcarmory.com/'

  app 'Armory.app'
end
