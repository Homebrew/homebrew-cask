cask "btcpayserver-vault" do
  version "2.0.6"
  sha256 "7cfba13ce23c8603f5b5b5dab971d355012b90426d8d1f5ab8cdbffd6bae5e5f"

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  name "BTCPayServer Vault"
  desc "App that allows web applications to access a hardware wallet"
  homepage "https://github.com/btcpayserver/BTCPayServer.Vault"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "BTCPayServer Vault.app"
end
