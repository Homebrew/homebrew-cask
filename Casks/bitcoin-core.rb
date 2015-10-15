cask :v1 => 'bitcoin-core' do
  version '0.11.1'
  sha256 '4ac6dca07c9d1052f9471846c1069a1902e161f4fa520aa74c6b74b32db3b51b'

  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  name 'Bitcoin'
  name 'Bitcoin Core'
  homepage 'https://bitcoin.org/'
  license :mit

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
