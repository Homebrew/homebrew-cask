cask 'ganache' do
  version '2.0.1'
  sha256 'c0e2f40b710ea8243f5985dc3b91a29e222189e9f19b0e8579ba732e3df41e76'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
