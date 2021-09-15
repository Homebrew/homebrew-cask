cask "btcpayserver-vault" do
  version "2.0.1"
  sha256 "16efaf0f8c4a75731689dc17999c693c873b2c55489d6a785683ab3a1e3413ff"

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  name "BTCPayServer Vault"
  desc "App that allows web applications to access a hardware wallet"
  homepage "https://github.com/btcpayserver/BTCPayServer.Vault"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/BTCPayServerVault-osx-x64-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "BTCPayServer Vault.app"
end
