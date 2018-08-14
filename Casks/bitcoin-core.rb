cask 'bitcoin-core' do
  version '0.16.1'
  sha256 'b96b992d7fe5aa78ceb92c240dde75e7f0004dfe233e67176077004937ff29ed'

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

  zap trash: '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist'
end
