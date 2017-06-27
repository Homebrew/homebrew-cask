cask 'bitcoin-core' do
  version '0.14.2'
  sha256 '463277b9139e890a713034b539583a0879bdcf0fc94c3c1fc08bb8aab81bb108'

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
