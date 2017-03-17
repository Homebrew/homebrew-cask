cask 'bitcoin-unlimited' do
  version '1.0.1.1'
  sha256  '47aa38b237d15112ea41e70341be3d2cbbc0edc431a2ddf2533bb34cbd359db9'

  url "https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-#{version}-osx.dmg"
  name 'Bitcoin Unlimited'
  homepage 'https://www.bitcoinunlimited.info/'

  conflicts_with cask: %w[bitcoin-classic bitcoin-core bitcoin-xt]
  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Unlimited.app'

  zap delete: '~/Library/Preferences/info.bitcoinunlimited.Bitcoin-Qt.plist'
end
