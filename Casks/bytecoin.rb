cask 'bytecoin' do
  version '3.0.0'
  sha256 '3bbafa6560f30b692184d2c59e0bdb55a38d4e3f8d6215605f7b46fcad7d0d50'

  url "https://bytecoin.org/storage/wallets/bytecoin_wallet/bytecoin-desktop-#{version}-macos.zip"
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoin-gui.app'
end
