cask 'ark-desktop-wallet' do
  version '2.2.1'
  sha256 '6dff02d4a6ea137ad2f689b8e90d9dcccc3dc8f7933c1e0f25b373abbff60f99'

  # github.com/ArkEcosystem/ark-desktop was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/ark-desktop/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/ark-desktop/releases.atom'
  name 'Ark Desktop Wallet'
  homepage 'https://ark.io/'

  app 'Ark Desktop Wallet.app'
end
