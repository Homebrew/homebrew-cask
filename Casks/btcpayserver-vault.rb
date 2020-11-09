cask "btcpayserver-vault" do
  version "1.0.5"
  sha256 "0e232bc305c8507cfbf7cb62188c66eae14f786981f698bf0ec4610bab10f668"

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  appcast "https://github.com/btcpayserver/BTCPayServer.Vault/releases.atom"
  name "BTCPayServer Vault"
  desc "App that allows web applications to access a hardware wallet"
  homepage "https://github.com/btcpayserver/BTCPayServer.Vault"

  app "BTCPayServer Vault.app"
end
