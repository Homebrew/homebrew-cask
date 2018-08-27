cask 'bitcoin-unlimited' do
  version '1.0.3.0'
  sha256 'b9f5e275450632fe595c9cd776694ffa2fc049071ee7d0ffe14b899c95255959'

  url "https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-#{version}-osx.dmg"
  name 'Bitcoin Unlimited'
  homepage 'https://www.bitcoinunlimited.info/'

  conflicts_with cask: ['bitcoin-classic', 'bitcoin-core', 'bitcoin-xt']
  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Unlimited.app'

  zap trash: '~/Library/Preferences/info.bitcoinunlimited.Bitcoin-Qt.plist'
end
