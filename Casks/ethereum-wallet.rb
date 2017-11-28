cask 'ethereum-wallet' do
  version '0.9.3'
  sha256 'c90fb7aad36b3a8357cac9472776b0e92363b2b8c684b8ea36d160a68cbe829f'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '3b1579bde3cc402ac1fd41a873b7ca38db1f58831f2347c098010d90cbe4ff55'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'
end
