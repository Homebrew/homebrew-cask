cask "btcpayserver-vault" do
  version "2.0.7"
  sha256 "f3f5a49a33e9a97c7dcd5ad6ce52e956f68a686f2699e820efa4b347307e5942"

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
