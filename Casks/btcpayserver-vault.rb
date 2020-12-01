cask "btcpayserver-vault" do
  version "1.0.7"
  sha256 "34464488853996e408204e62c6bfbb7c846b489617d44da2a54bb8a1afa1b908"

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  appcast "https://github.com/btcpayserver/BTCPayServer.Vault/releases.atom"
  name "BTCPayServer Vault"
  desc "App that allows web applications to access a hardware wallet"
  homepage "https://github.com/btcpayserver/BTCPayServer.Vault"

  app "BTCPayServer Vault.app"
end
