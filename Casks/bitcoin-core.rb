cask 'bitcoin-core' do
  version '0.18.1'
  sha256 '063b757820fead6e94eac5a52859bcb6421e23db71e562ddd2ebacdeecc621b7'

  # bitcoin.org was verified as official when first introduced to the cask
  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
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
