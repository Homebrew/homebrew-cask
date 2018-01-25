cask 'bytecoinwallet' do
  version '1.1.9.3'
  sha256 'bab3a9ba28428ecfbb071bd4857303b82f896b78b1ff5933621d376b13c86a01'

  url "https://bytecoin.org/storage/wallets/bytecoin_wallet/BytecoinWallet-#{version}.dmg"
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoinwallet.app'
end
