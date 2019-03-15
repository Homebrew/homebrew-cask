cask 'ark-desktop-wallet' do
  version '2.3.0'
  sha256 '37f88055fc428e7c3adc98b4e66b9fe08fdab068b82fd4f13bf9e161dd7883d0'

  # github.com/ArkEcosystem/ark-desktop was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/ark-desktop/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/ark-desktop/releases.atom'
  name 'Ark Desktop Wallet'
  homepage 'https://ark.io/'

  app 'Ark Desktop Wallet.app'
end
