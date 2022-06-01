cask "btcpayserver-vault" do
  version "2.0.2"
  sha256 "a1aae06f78d5f984b0b9e433a8e62b7b50523b92779e45bd3057229a465324c6"

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
