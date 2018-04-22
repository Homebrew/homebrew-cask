cask 'ganache' do
  version '1.1.0'
  sha256 'a24f2e1e4e76508dc324b13ec85ab7f931a521df0fa97f9e43e0a3fa6a6a489c'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom',
          checkpoint: 'ec43ed8e40d1fdcffbccccc3a6b659849222a34ba3e609c8dcdda67928a6f99f'
  name 'Ganache'
  homepage 'http://truffleframework.com/ganache/'

  app 'Ganache.app'
end
