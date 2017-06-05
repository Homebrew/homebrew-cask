cask 'bytecoinwallet' do
  version '1.1.5'
  sha256 '424b2671ed7fd59266c83c4219976c21d742de0cae1614372025b33c1901db3f'

  url "https://bytecoin.org/static/files/BytecoinWallet-#{version}.dmg"
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoinwallet.app'
end
