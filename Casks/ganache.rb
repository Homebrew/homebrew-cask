cask 'ganache' do
  version '1.2.2'
  sha256 '8e30bbefc304e464ebda416267c4d38758f02f64ac0981c09971a3d548e9c99f'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
