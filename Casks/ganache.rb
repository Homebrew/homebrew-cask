cask 'ganache' do
  version '2.1.0'
  sha256 '46b56e72e25566b83d82063c2a03203c4ac27f43e12a60f282f13a14632f3cda'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
