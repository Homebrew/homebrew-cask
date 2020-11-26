cask "btcpayserver-vault" do
  version "1.0.6"
  sha256 "3bb66a00a58dd639de49d16c647c3e19c4dea47e6f48a56afc7facbcd53dce51"

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  appcast "https://github.com/btcpayserver/BTCPayServer.Vault/releases.atom"
  name "BTCPayServer Vault"
  desc "App that allows web applications to access a hardware wallet"
  homepage "https://github.com/btcpayserver/BTCPayServer.Vault"

  app "BTCPayServer Vault.app"
end
