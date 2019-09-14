cask 'ark-desktop-wallet' do
  version '2.6.2'
  sha256 'e1cc0f3bfa09105b484299794c9e3f1e8bc4bf256f9331234fe26f40ea7dc36e'

  # github.com/ArkEcosystem/desktop-wallet was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/desktop-wallet/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/desktop-wallet/releases.atom'
  name 'Ark Desktop Wallet'
  homepage 'https://ark.io/'

  app 'Ark Desktop Wallet.app'
end
