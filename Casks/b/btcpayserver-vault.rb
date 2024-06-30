cask "btcpayserver-vault" do
  version "2.0.9"
  sha256 "455d618f1d2a1caff54b8ffb5a5ebfe4ddb69a90b9c81256cdacb85c61b1333a"

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

  caveats do
    requires_rosetta
  end
end
