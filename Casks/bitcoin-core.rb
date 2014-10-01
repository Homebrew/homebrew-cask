class BitcoinCore < Cask
  version '0.9.3'
  sha256 '251938650bd79681dd93dcce346589aa5d1217d012a6f8e749165ef2149662d2'

  url "https://bitcoin.org/bin/#{version}/bitcoin-#{version}-macosx.dmg"
  homepage 'https://bitcoin.org/'
  license :unknown

  app 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
