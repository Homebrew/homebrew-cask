cask 'btcpayserver-vault' do
  version '1.0.0'
  sha256 '645a8454f73ccf5493802f0540d8d00ce87a55f8b32a8b9924fb0b2118f38111'

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  appcast 'https://github.com/btcpayserver/BTCPayServer.Vault/releases.atom'
  name 'BTCPayServer Vault'
  homepage 'https://github.com/btcpayserver/BTCPayServer.Vault'

  app 'BTCPayServer Vault.app'
end
