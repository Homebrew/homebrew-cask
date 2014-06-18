class BitcoinCore < Cask
  url 'https://bitcoin.org/bin/0.9.2/bitcoin-0.9.2-osx.dmg'
  homepage 'https://bitcoin.org/'
  version '0.9.2'
  sha256 '077e51c5d961daea194fa18c43ca2d99c6214ef10e578e7403110e47fd74ab76'
  link 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
