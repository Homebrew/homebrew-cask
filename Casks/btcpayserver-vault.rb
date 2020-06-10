cask 'btcpayserver-vault' do
  version '1.0.2'
  sha256 '9118832344110d7ed8a65cedf6ba50f4891f7ac389e5152f4351d36514b0e8aa'

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  appcast 'https://github.com/btcpayserver/BTCPayServer.Vault/releases.atom'
  name 'BTCPayServer Vault'
  homepage 'https://github.com/btcpayserver/BTCPayServer.Vault'

  app 'BTCPayServer Vault.app'
end
