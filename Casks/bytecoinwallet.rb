cask 'bytecoinwallet' do
  version '1.1.0'
  sha256 '6964b94e3ee09ce3d093833e131e30d7c0b6c2c4997752c985de7ea8c480b28d'

  url "https://bytecoin.org/static/files/BytecoinWallet-#{version}.dmg"
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoinwallet.app'
end
