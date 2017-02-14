cask 'ethereum-wallet' do
  version '0.8.9'
  sha256 'a244daa82abd4e607672dc375e5b5060266104f81f12045e199265e92655c8c3'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: 'f13dc4c770931e8f8805d584c8fb6f21461a5757b31e0f9fca50f07ac73a12f5'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'
end
