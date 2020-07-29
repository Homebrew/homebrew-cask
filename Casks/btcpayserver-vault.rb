cask 'btcpayserver-vault' do
  version '1.0.4'
  sha256 '2a2dbac39e838b05553863a401317c04c400d3a2e64716d0d8eeba1ccaa11cce'

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  appcast 'https://github.com/btcpayserver/BTCPayServer.Vault/releases.atom'
  name 'BTCPayServer Vault'
  homepage 'https://github.com/btcpayserver/BTCPayServer.Vault'

  app 'BTCPayServer Vault.app'
end
