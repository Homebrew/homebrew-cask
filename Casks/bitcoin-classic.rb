cask 'bitcoin-classic' do
  version '1.2.3'
  sha256 'f691d218b5c1f24c458a3a5b144518a99dbc64fa0fcc4329735e35f39f498fa0'

  # github.com/bitcoinclassic was verified as official when first introduced to the cask
  url "https://github.com/bitcoinclassic/bitcoinclassic/releases/download/v#{version}/bitcoin-#{version}-osx.dmg"
  appcast 'https://github.com/bitcoinclassic/bitcoinclassic/releases.atom',
          checkpoint: '64a310cb19e13569c87f8b054e84de08a894e4e456d78f49346018930b751975'
  name 'Bitcoin Classic'
  homepage 'https://bitcoinclassic.com/'

  conflicts_with cask: %w[bitcoin-core bitcoin-unlimited bitcoin-xt]
  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Classic.app'

  # Bitcoin classic names it preferences file same as Bitcoin Core:
  zap delete: '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist'
end
