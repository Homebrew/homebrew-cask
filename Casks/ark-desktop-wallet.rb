cask 'ark-desktop-wallet' do
  version '2.1.1'
  sha256 '5b72183397998966379a7dd853e941838315bbc7a3fdef961607e872453ea56d'

  # github.com/ArkEcosystem/ark-desktop was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/ark-desktop/releases/download/#{version}/Ark.Desktop.Wallet-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/ark-desktop/releases.atom'
  name 'Ark Desktop Wallet'
  homepage 'https://ark.io/'

  app 'Ark Desktop Wallet.app'
end
