class BitcoinCore < Cask
  version '0.9.2.1'
  sha256 'b50c966932474a79e869dee4bb84dd155c98c9f458a4d31bcfbee9481ba3c6b4'

  url 'https://bitcoin.org/bin/0.9.2.1/bitcoin-0.9.2.1-osx.dmg'
  homepage 'https://bitcoin.org/'

  link 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
