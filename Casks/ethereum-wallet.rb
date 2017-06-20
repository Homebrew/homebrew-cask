cask 'ethereum-wallet' do
  version '0.8.10'
  sha256 '36c77908b9ec36c3aed41d0d161bbe6c4569379c96e6390f7fa405fa78d3aaea'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: 'bcba492b876bc947867bd0260a87b09ee1b54cfb6cf26cf2a2fe4b7b801a272a'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'
end
