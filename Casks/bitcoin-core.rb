cask :v1 => 'bitcoin-core' do
  version '0.11.0'
  sha256 'fa457e65662b73f3d33235c012d4bec181e2919dd2a400afaa0ff9ab4927fb89'

  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  name 'Bitcoin'
  name 'Bitcoin Core'
  homepage 'https://bitcoin.org/'
  license :mit

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
