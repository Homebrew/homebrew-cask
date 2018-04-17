cask 'ganache' do
  version '1.0.2'
  sha256 '80ccdf1a7da83912c38af35bcdb325f971b56474afb6d1b9e5502831a0593026'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom',
          checkpoint: 'ec43ed8e40d1fdcffbccccc3a6b659849222a34ba3e609c8dcdda67928a6f99f'
  name 'Ganache'
  homepage 'http://truffleframework.com/ganache/'

  app 'Ganache.app'
end
