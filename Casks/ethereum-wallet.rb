cask 'ethereum-wallet' do
  version '0.8.7'
  sha256 'f9c89ba595ba6db9b976e1747c5355f01608dc09a44409fc1cd2c76b0660852c'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '4beac8a0d92cb0a142cb33444d28bc48d5634830725ccd95b9eb16820ca11548'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'
end
