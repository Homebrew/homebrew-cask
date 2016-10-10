cask 'bitcoin-core' do
  version '0.13.0'
  sha256 'e7fed095f1fb833d167697c19527d735e43ab2688564887b80b76c3c349f85b0'

  # bitcoin.org was verified as official when first introduced to the cask
  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  name 'Bitcoin Core'
  homepage 'https://bitcoincore.org/'

  conflicts_with cask: 'bitcoin-xt'
  depends_on macos: '>= :lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Core.app'

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", '0755'
  end

  postflight do
    set_permissions "#{appdir}/Bitcoin Core.app", '0555'
  end

  zap delete: [
                '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist',
              ]
end
