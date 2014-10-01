class BitcoinCore < Cask
  version '0.9.2.1'
  sha256 'b50c966932474a79e869dee4bb84dd155c98c9f458a4d31bcfbee9481ba3c6b4'

  url "https://bitcoin.org/bin/#{version}/bitcoin-#{version}-osx.dmg"
  homepage 'https://bitcoin.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3634
  app 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
