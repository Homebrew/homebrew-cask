cask 'ark-desktop-wallet' do
  version '2.9.2'
  sha256 '039cc7126db917f66e333489e79a5425f9863cca237c57af6614d1695ce6d349'

  # github.com/ArkEcosystem/desktop-wallet/ was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/desktop-wallet/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/desktop-wallet/releases.atom'
  name 'Ark Desktop Wallet'
  homepage 'https://ark.io/'

  app 'Ark Desktop Wallet.app'
end
