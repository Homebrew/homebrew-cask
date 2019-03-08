cask 'ganache' do
  version '1.3.1'
  sha256 'f3d0d1b6bb51c568a90e0b1b12deb3fbce693d098e00a40f72cb7f57737942cc'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
