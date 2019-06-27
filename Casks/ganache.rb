cask 'ganache' do
  version '2.0.2'
  sha256 '024bd0ccef2d4f37306be871094676be6ac2b9db8c8a79e287e126e644792acc'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
