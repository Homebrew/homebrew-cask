cask 'bitcoin-core' do
  version '0.15.0'
  sha256 '973967c7722c9431b7bdb592981831e320fc6f67c4d10d3c3f27c0a251cab6d6'

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
