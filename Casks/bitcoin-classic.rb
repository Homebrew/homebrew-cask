cask 'bitcoin-classic' do
  version '1.3.7'
  sha256 '0aafe8f34820da51810b60658234dc55bd05f5b96d6e5d5c99ef0c40569761b5'

  # github.com/bitcoinclassic was verified as official when first introduced to the cask
  url "https://github.com/bitcoinclassic/bitcoinclassic/releases/download/v#{version}/bitcoin-#{version}-osx.dmg"
  appcast 'https://github.com/bitcoinclassic/bitcoinclassic/releases.atom',
          checkpoint: '4a64ea7c3b998d4abeabb3ce6f58ffab270b8a2f35ae7c7c531c422091062ec9'
  name 'Bitcoin Classic'
  homepage 'https://bitcoinclassic.com/'

  conflicts_with cask: ['bitcoin-core', 'bitcoin-unlimited', 'bitcoin-xt']
  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Classic.app'

  # Bitcoin classic names it preferences file same as Bitcoin Core:
  zap delete: '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist'
end
