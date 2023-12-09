cask "btcpayserver-vault" do
  version "2.0.8"
  sha256 "c76393cf8b2fd566fcbb948046c2ce8d8f622066bb07b965b49913859b5f9e31"

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
