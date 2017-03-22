cask 'bitcoin-classic' do
  version '1.2.2'
  sha256  'ee6eda8071e65a47b60a6d3a52c04ab8e75c53abfcca53da24599f572514dece'

  # github.com/bitcoinclassic was verified as official when first introduced to the cask
  url "https://github.com/bitcoinclassic/bitcoinclassic/releases/download/v#{version}/bitcoin-#{version}-osx.dmg"
  appcast 'https://github.com/bitcoinclassic/bitcoinclassic/releases.atom',
          checkpoint: 'e1cab782b11b51d1810fcdeaf4a3c3ed722f335b0452330c39cb31b52b9a889f'
  name 'Bitcoin Classic'
  homepage 'https://bitcoinclassic.com/'

  conflicts_with cask: %w[bitcoin-core bitcoin-unlimited bitcoin-xt]
  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Classic.app'

  # Bitcoin classic names it preferences file same as Bitcoin Core:
  zap delete: '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist'
end
