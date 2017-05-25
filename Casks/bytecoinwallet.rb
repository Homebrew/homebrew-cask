cask 'bytecoinwallet' do
  version '1.1.3'
  sha256 '8ef710404a0c8d81eb678d31bf4ed2dee9949bdab3a3f1d9c597ae9ce865d6fb'

  url "https://bytecoin.org/static/files/BytecoinWallet-#{version}.dmg"
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoinwallet.app'
end
