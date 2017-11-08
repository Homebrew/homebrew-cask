cask 'monero-gui' do
  version '0.11.1.0'
  sha256 '4f63ac3e9c5f87f8d8318ff89cdbfa954716e8addbdc8fcd0352fe678b84f8e2'

  url 'https://downloads.getmonero.org/gui/mac64'
  name 'Monero GUI'
  homepage 'https://getmonero.org/'

  app 'monero-wallet-gui.app', target: 'Monero Wallet.app'
end
