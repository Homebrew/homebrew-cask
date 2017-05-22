cask 'ethereum-wallet' do
  version '0.8.10'
  sha256 '36c77908b9ec36c3aed41d0d161bbe6c4569379c96e6390f7fa405fa78d3aaea'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: 'f746379a4327fc4c202784bb6ce39e90b8e16bf955ad436d1b6b583051d5fc91'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'
end
