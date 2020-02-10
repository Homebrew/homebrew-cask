cask 'btcpayserver-vault' do
  version '1.0.1'
  sha256 '9e240b2519e00ed170a2ab852219623dddcef758ba8f34d38a61c9a77d1cdf64'

  url "https://github.com/btcpayserver/BTCPayServer.Vault/releases/download/Vault%2Fv#{version}/BTCPayServerVault-osx-x64-#{version}.dmg"
  appcast 'https://github.com/btcpayserver/BTCPayServer.Vault/releases.atom'
  name 'BTCPayServer Vault'
  homepage 'https://github.com/btcpayserver/BTCPayServer.Vault'

  app 'BTCPayServer Vault.app'
end
