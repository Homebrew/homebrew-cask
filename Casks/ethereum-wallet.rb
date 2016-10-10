cask 'ethereum-wallet' do
  version '0.8.4'
  sha256 '617b2caacae92f8c0a409e48f7eaee5b21acd57f4c21d0d856bafad881ae306f'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '2d7732efec4c6ae0075a4bb955750dc4fd8e78874abe2c5216e527c25aa3d9b9'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'
end
