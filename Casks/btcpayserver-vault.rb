cask "btcpayserver-vault" do
  version "2.0.3"
  sha256 "da9957912cf611bfe3c32bac9727f16c99932166738c65537a1ef8e1987ea8cf"

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  name "BTCPayServer Vault"
  desc "App that allows web applications to access a hardware wallet"
  homepage "https://github.com/btcpayserver/BTCPayServer.Vault"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/BTCPayServerVault-osx-x64-(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "BTCPayServer Vault.app"
end
