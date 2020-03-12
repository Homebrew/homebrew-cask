cask 'bitcoin-core' do
  version '0.19.1'
  sha256 '206d8d92189d22e735393abebeb7a2e7237a119dd448b4a40df8c357da1287b2'

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
