cask :v1 => 'bitcoin-core' do
  version '0.10.1'
  sha256 '6d6c6faa23b567fe79dc5d2360f52764b48ea8adbcb183d012846856b98e0403'

  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  name 'Bitcoin'
  name 'Bitcoin Core'
  homepage 'https://bitcoin.org/'
  license :mit

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3634
  app 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
