cask 'ethereum-wallet' do
  version '0.8.6'
  sha256 '1b72cbeeb439517e7e20fabf9c39bb3263cca78c0074b11a76ea0a0586a51d30'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '4377f696a120458187946696684e3a39cac3e1ca9931069d36299c52f87e998e'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'
end
