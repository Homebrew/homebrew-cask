cask :v1 => 'bitcoin-core' do
  version '0.9.3'
  sha256 '251938650bd79681dd93dcce346589aa5d1217d012a6f8e749165ef2149662d2'

  url "https://bitcoin.org/bin/#{version}/bitcoin-#{version}-macosx.dmg"
  homepage 'https://bitcoin.org/'
  license :mit

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3634
  app 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
