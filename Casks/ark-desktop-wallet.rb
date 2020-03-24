cask 'ark-desktop-wallet' do
  version '2.9.0'
  sha256 '8fbba3483f1a1e5a04de78d7c3ec48197d7ab05468ee45f4dca985c7fcb2fafe'

  # github.com/ArkEcosystem/desktop-wallet was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/desktop-wallet/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/desktop-wallet/releases.atom'
  name 'Ark Desktop Wallet'
  homepage 'https://ark.io/'

  app 'Ark Desktop Wallet.app'
end
