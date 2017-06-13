cask 'bitcoin-classic' do
  version '1.2.5'
  sha256 '43376113b68a115ab3d04135527bd3d660b3183cd6a31d27471d93886de3051f'

  # github.com/bitcoinclassic was verified as official when first introduced to the cask
  url "https://github.com/bitcoinclassic/bitcoinclassic/releases/download/v#{version}/bitcoin-#{version}-osx.dmg"
  appcast 'https://github.com/bitcoinclassic/bitcoinclassic/releases.atom',
          checkpoint: 'f269c31370e255b28402bf355d5cea800267202f4008266469fe89d1e6e0924b'
  name 'Bitcoin Classic'
  homepage 'https://bitcoinclassic.com/'

  conflicts_with cask: %w[bitcoin-core bitcoin-unlimited bitcoin-xt]
  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Bitcoin-Qt.app', target: 'Bitcoin Classic.app'

  # Bitcoin classic names it preferences file same as Bitcoin Core:
  zap delete: '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist'
end
