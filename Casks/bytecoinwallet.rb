cask 'bytecoinwallet' do
  version '1.1.1'
  sha256 '6b1266a761c037fc4156c7e4f9df1fa225d12666f20f71d4aa1f0296f0a26c0d'

  url "https://bytecoin.org/static/files/BytecoinWallet-#{version}.dmg"
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoinwallet.app'
end
