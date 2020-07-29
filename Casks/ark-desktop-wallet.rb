cask 'ark-desktop-wallet' do
  version '2.9.1'
  sha256 'fe428a1d7e89fcaa870c70db9a19de93bd9def66460e03eef0f80500f7d72669'

  # github.com/ArkEcosystem/desktop-wallet/ was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/desktop-wallet/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/desktop-wallet/releases.atom'
  name 'Ark Desktop Wallet'
  homepage 'https://ark.io/'

  app 'Ark Desktop Wallet.app'
end
