cask 'ethereum-wallet' do
  version '0.9.1'
  sha256 '53023d0b3d2724ca2656b5a21c6c0516534906cfe62c69d3bef4439e59ca3040'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: 'dcb48d1e593f132f3c46cfcf9488a4fb8ce4aaa0c74ab13805eb56e1a341259a'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'
end
