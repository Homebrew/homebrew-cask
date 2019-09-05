cask 'ark-desktop-wallet' do
  version '2.6.1'
  sha256 '6a7e04edc068ace9fb9febc3d63f706b200b24d0234e733b19816f5fce4386e0'

  # github.com/ArkEcosystem/desktop-wallet was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/desktop-wallet/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/desktop-wallet/releases.atom'
  name 'Ark Desktop Wallet'
  homepage 'https://ark.io/'

  app 'Ark Desktop Wallet.app'
end
