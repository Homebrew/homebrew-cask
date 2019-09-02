cask 'ark-desktop-wallet' do
  version '2.6.0'
  sha256 '327bfcdd4e48f2d029644fdf6f7d475c238ca8fe789dde227c0acc3b7ef2e81f'

  # github.com/ArkEcosystem/desktop-wallet was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/desktop-wallet/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/desktop-wallet/releases.atom'
  name 'Ark Desktop Wallet'
  homepage 'https://ark.io/'

  app 'Ark Desktop Wallet.app'
end
