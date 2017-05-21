cask 'bytecoinwallet' do
  version '1.1.2'
  sha256 '492e64eadd1e488dcc9736d46253485b1d6aecadfe31ceb865c5b73ce8016ff4'

  url "https://bytecoin.org/static/files/BytecoinWallet-#{version}.dmg"
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoinwallet.app'
end
