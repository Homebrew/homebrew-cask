cask 'ethereum-wallet' do
  version '0.8.9'
  sha256 'a244daa82abd4e607672dc375e5b5060266104f81f12045e199265e92655c8c3'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: 'fe2fc14549a6c22d63eb1df823db47f9cd94bbd4b2cfa28091ecac3caf992bf4'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'
end
