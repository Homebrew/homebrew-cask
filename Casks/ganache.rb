cask 'ganache' do
  version '2.1.1'
  sha256 '298886a8c4e43879255c95f39ce8e65b9fab4b229757aa94d1b690cbfea067dd'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}-mac.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
