cask 'ark-desktop-wallet' do
  version '2.4.1'
  sha256 '93b8f282635524c593d51fc3e507b4f3d34fc3e013309df325d78ef67ff986a3'

  # github.com/ArkEcosystem/desktop-wallet was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/desktop-wallet/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/desktop-wallet/releases.atom'
  name 'Ark Desktop Wallet'
  homepage 'https://ark.io/'

  app 'Ark Desktop Wallet.app'
end
