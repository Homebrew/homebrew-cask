cask 'bitcoin-core' do
  version '0.19.0.1'
  sha256 '1a8865ac84de9710633ad89b3f6b7c08281a0298d47e8ce7d4f5bb52f765f06e'

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  appcast 'https://github.com/bitcoin/bitcoin/releases.atom'
  name 'Bitcoin Core'
  homepage 'https://bitcoincore.org/'

  conflicts_with cask: 'bitcoin-xt'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Core.app'

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", '0755'
  end

  zap trash: '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist'
end
