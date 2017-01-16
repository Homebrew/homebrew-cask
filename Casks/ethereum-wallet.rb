cask 'ethereum-wallet' do
  version '0.8.8'
  sha256 '141716aedbf9a94c4aa2051a8ae8ee0a5b65da5d6f788670a298d6de7aad829a'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '63081a0ff5fcb43ec5670b82812ab60465e292f0a1de4e3ae956e93e47071def'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'
end
