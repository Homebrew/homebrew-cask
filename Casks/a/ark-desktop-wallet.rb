cask "ark-desktop-wallet" do
  version "2.9.5"
  sha256 "2ac74aa43c474fe51db57bbcb52cad13d0d51ef276f0088c7cfe36261790c272"

  url "https://github.com/ArkEcosystem/desktop-wallet/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg",
      verified: "github.com/ArkEcosystem/desktop-wallet/"
  name "Ark Desktop Wallet"
  desc "Multi Platform ARK Desktop Wallet"
  homepage "https://ark.io/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Ark Desktop Wallet.app"

  caveats do
    requires_rosetta
  end
end
