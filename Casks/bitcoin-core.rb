class BitcoinCore < Cask
  url 'https://bitcoin.org/bin/0.9.1/bitcoin-0.9.1-macosx-setup.dmg'
  homepage 'https://bitcoin.org/'
  version '0.9.1'
  sha256 '0390fbf5bf1ef876d95f277319983342c47252bf8369bab45def9d13afcbf4e2'
  link 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
