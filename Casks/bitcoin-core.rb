cask 'bitcoin-core' do
  version '0.14.1'
  sha256 '2052793453ad37b8e00527942a7150f23f1c5dd5903e5e3e8a3b444dee81e3e0'

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
