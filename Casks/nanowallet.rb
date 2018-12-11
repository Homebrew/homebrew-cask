cask 'nanowallet' do
  version '2.4.2'
  sha256 '5d29a3517d3c73afbcfac70550ff7972bb2d90fe65f38b98b9c6806f0fd92596'

  # github.com/NemProject/NanoWallet was verified as official when first introduced to the cask
  url "https://github.com/NemProject/NanoWallet/releases/download/#{version}/NEM-Wallet-#{version}.zip"
  appcast 'https://github.com/NemProject/NanoWallet/releases.atom'
  name 'NanoWallet'
  homepage 'https://nem.io/'

  app "NanoWallet-#{version}-osx64/NanoWallet.app"

  zap trash: '~/Library/Application Support/NanoWallet'
end
