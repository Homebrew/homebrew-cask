cask 'bitcoin-unlimited' do
  version '1.0.2.0'
  sha256 'e0360d108cb4f3ea996e5d59c41e95065e793c140bc12042e217d037bb587d63'

  url "https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-#{version}-osx.dmg"
  name 'Bitcoin Unlimited'
  homepage 'https://www.bitcoinunlimited.info/'

  conflicts_with cask: ['bitcoin-classic', 'bitcoin-core', 'bitcoin-xt']
  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Unlimited.app'

  zap trash: '~/Library/Preferences/info.bitcoinunlimited.Bitcoin-Qt.plist'
end
