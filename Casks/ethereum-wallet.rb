cask 'ethereum-wallet' do
  version '0.9.0'
  sha256 '4077b08122b5d3480191a1c9d52b09934202cc5af755f172b276581b2729c8b2'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '1b8e9586304e2320fbee37b398f77f04b86f9337ddf232232e58f4311c82d314'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'
end
