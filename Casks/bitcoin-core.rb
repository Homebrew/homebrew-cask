cask 'bitcoin-core' do
  version '0.15.1'
  sha256 '0ce5ca1ba424603526d8a40d9321f1f735797a7205a7fbbe39561c078f2a0858'

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
