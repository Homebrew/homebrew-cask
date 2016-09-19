cask 'ethereum-wallet' do
  version '0.8.2'
  sha256 '12e43b5f321a1b94357db74d3b31abb1aea5ae3e542b19f0eaad3f966160ca13'

  url "https://github.com/ethereum/mist/releases/download/#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.zip"
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'
  license :gpl

  app 'Ethereum-Wallet.app'
end
