cask "btcpayserver-vault" do
  version "2.0.5"
  sha256 "f88dcee1d074957ce8358459808ddca73b750405aa87b8975581a989253b74e2"

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  name "BTCPayServer Vault"
  desc "App that allows web applications to access a hardware wallet"
  homepage "https://github.com/btcpayserver/BTCPayServer.Vault"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tag/Vault/v?(\d+(?:\.\d+)+)["' >]}i)
    strategy :github_latest
  end

  app "BTCPayServer Vault.app"
end
