cask :v1 => 'bitcoin-core' do
  version '0.10.2'
  sha256 '59f569c5fa3cf313c39b0950182f5e7cde77c904015af7646f2901bba390efc4'

  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  name 'Bitcoin'
  name 'Bitcoin Core'
  homepage 'https://bitcoin.org/'
  license :mit

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3634
  app 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
