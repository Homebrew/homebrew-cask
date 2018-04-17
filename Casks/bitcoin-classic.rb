cask 'bitcoin-classic' do
  version '1.3.8'
  sha256 'af389592faa032d02a290b21e78d8c3473b9a4a50bf55d034649fff2cceb40d3'

  # github.com/bitcoinclassic was verified as official when first introduced to the cask
  url "https://github.com/bitcoinclassic/bitcoinclassic/releases/download/v#{version}/bitcoin-#{version}-osx.dmg"
  appcast 'https://github.com/bitcoinclassic/bitcoinclassic/releases.atom',
          checkpoint: '4b9a1aaaa152caf0e9665b793ec4037f537647a64d559700b81c740a3fb2c548'
  name 'Bitcoin Classic'
  homepage 'https://bitcoinclassic.com/'

  conflicts_with cask: ['bitcoin-core', 'bitcoin-unlimited', 'bitcoin-xt']
  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Classic.app'

  # Bitcoin classic names it preferences file same as Bitcoin Core:
  zap trash: '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist'
end
