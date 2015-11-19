cask :v1 => 'bitcoin-core' do
  version '0.11.2'
  sha256 '413dd4335ced455c0e773d4081f7ff7e5e23e8098bf1fe402e0185cc584ca0df'

  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  name 'Bitcoin'
  name 'Bitcoin Core'
  homepage 'https://bitcoin.org/'
  license :mit

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
