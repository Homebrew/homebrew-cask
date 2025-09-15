cask "btcpayserver-vault" do
  version "2.0.13"
  sha256 "130fa96cfefd7dab4c81033961265ab4a73b9016192aeb55f7849b4038fc8ede"

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  name "BTCPayServer Vault"
  desc "App that allows web applications to access a hardware wallet"
  homepage "https://github.com/btcpayserver/BTCPayServer.Vault"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  app "BTCPayServer Vault.app"

  zap trash: "~/Library/Saved Application State/com.btcpayserver.vault.savedState"

  caveats do
    requires_rosetta
  end
end
