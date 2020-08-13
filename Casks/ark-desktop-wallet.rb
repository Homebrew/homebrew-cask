cask "ark-desktop-wallet" do
  version "2.9.3"
  sha256 "71bbe46c7dd58d6cccc1797d27a39376dffcb73825192b14b94b6107f4e0d7b8"

  # github.com/ArkEcosystem/desktop-wallet/ was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/desktop-wallet/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast "https://github.com/ArkEcosystem/desktop-wallet/releases.atom"
  name "Ark Desktop Wallet"
  homepage "https://ark.io/"

  app "Ark Desktop Wallet.app"
end
