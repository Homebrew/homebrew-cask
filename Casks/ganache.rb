cask 'ganache' do
  version '1.0.2'
  sha256 'fd79850eb2a7a6b28022cdf31724873c225817fdb06d00315aab50719bd69394'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom',
          checkpoint: '238b0de58cc42ce87403dcbe28bcb4f2a67acd28a23dfc0bd9092fc4f16d4a81'
  name 'Ganache'
  homepage 'http://truffleframework.com/ganache/'

  app 'Ganache.app'
end
