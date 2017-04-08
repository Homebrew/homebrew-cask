cask 'bitcoin-unlimited' do
  version '1.0.1.3'
  sha256  '7e19427a5931278a06cefdea972a674b676bbfeab2816993ab6b530889aeb536'

  url "https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-#{version}-osx.dmg"
  name 'Bitcoin Unlimited'
  homepage 'https://www.bitcoinunlimited.info/'

  conflicts_with cask: %w[bitcoin-classic bitcoin-core bitcoin-xt]
  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Unlimited.app'

  zap delete: '~/Library/Preferences/info.bitcoinunlimited.Bitcoin-Qt.plist'
end
