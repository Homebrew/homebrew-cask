cask "btcpayserver-vault" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "a5349bf725938f38b8ede8204e253ce1b2b97385005207d485d277c9138dc4fd",
         intel: "5176aae4ece6ca93d51cdcc092c43b9f809e40696dffedeb07e3ef4d6972a189"

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-#{arch}-#{version}.dmg"
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
end
