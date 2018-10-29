cask 'bitcoin-core' do
  version '0.17.0'
  sha256 '0aea5cda990e7713b19577f5b7244d57847902a0e3fa98d7298a7f06e181ac58'

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
