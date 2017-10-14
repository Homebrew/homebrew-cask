cask 'ethereum-wallet' do
  version '0.9.2'
  sha256 '6d87f99ad8e53e5a1cbcaab19552ee042b17d1e297a3b025b1edf630b0a0b100'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '57df8c5cd893fad8ce1da4771e54bf9890f7fba40065428c10299c53e7652088'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'
end
