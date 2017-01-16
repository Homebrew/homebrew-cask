cask 'bitcoin-core' do
  version '0.13.2'
  sha256 'dac105b49c159a3d8c9463d1f05afe4cf29ec40bbd145e8961132693b7eff953'

  # bitcoin.org was verified as official when first introduced to the cask
  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  name 'Bitcoin Core'
  homepage 'https://bitcoincore.org/'

  conflicts_with cask: 'bitcoin-xt'
  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Core.app'

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", '0755'
  end

  zap delete: '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist'
end
