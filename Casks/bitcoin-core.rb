cask :v1 => 'bitcoin-core' do
  version '0.11.0'
  sha256 'fa457e65662b73f3d33235c012d4bec181e2919dd2a400afaa0ff9ab4927fb89'

  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  name 'Bitcoin'
  name 'Bitcoin Core'
  homepage 'https://bitcoin.org/'
  license :mit

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3634
  app 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
