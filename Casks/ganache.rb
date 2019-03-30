cask 'ganache' do
  version '2.0.0'
  sha256 'd069fe90103f42f2e7a76e57207ad7ae9f4b0ef4004cd7961059ae8e14d95ba2'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
