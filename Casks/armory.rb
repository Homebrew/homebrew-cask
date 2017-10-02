cask 'armory' do
  version '0.96.3'
  sha256 '851f218b78dbf0acb84c111b8989254155828d8f9fdfa5ab21c25fda10745fdc'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/goatpig/BitcoinArmory/releases/download/v#{version}/armory_#{version}_osx.tar.gz"
  appcast 'https://github.com/goatpig/BitcoinArmory/releases.atom',
          checkpoint: '46af4ad65f91f3ae92d812b63a8efbce244d14c2b290b5e2c0f8d25e8f9ba7e0'
  name 'Armory'
  homepage 'https://btcarmory.com/'

  app 'Armory.app'
end
