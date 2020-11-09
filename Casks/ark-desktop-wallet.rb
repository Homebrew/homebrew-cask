cask "ark-desktop-wallet" do
  version "2.9.4"
  sha256 "4923e450f249a5e8166485d069e108ab9c6b39b1cae51c6625adf84c172c0af7"

  # github.com/ArkEcosystem/desktop-wallet/ was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/desktop-wallet/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast "https://github.com/ArkEcosystem/desktop-wallet/releases.atom"
  name "Ark Desktop Wallet"
  desc "Multi Platform ARK Desktop Wallet"
  homepage "https://ark.io/"

  app "Ark Desktop Wallet.app"
end
