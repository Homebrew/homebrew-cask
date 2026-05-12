cask "btcpayserver-vault" do
  version "3.0.0"
  sha256 "c92ae7f7b60d606d3b8d05e319a0eb0ff34438c84ebb2112bbda2aa1f5d64798"

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  name "BTCPayServer Vault"
  desc "App that allows web applications to access a hardware wallet"
  homepage "https://github.com/btcpayserver/BTCPayServer.Vault"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  depends_on :macos

  app "BTCPayServer Vault.app"

  zap trash: "~/Library/Saved Application State/com.btcpayserver.vault.savedState"

  caveats do
    requires_rosetta
  end
end
