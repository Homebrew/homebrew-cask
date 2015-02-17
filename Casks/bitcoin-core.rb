cask :v1 => 'bitcoin-core' do
  version '0.10.0'
  sha256 'ccb80a8476a8d6cee6378784efeb199357f7c34ae11a96c0f2af9a6c9a16d1a1'

  url "https://bitcoin.org/bin/#{version}/bitcoin-#{version}-osx.dmg"
  name 'Bitcoin'
  name 'Bitcoin Core'
  homepage 'https://bitcoin.org/'
  license :mit

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3634
  app 'Bitcoin-Qt.app', :target => 'Bitcoin Core.app'
end
