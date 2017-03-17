cask 'bitcoin-classic' do
  version '1.2.2'
  sha256  'ee6eda8071e65a47b60a6d3a52c04ab8e75c53abfcca53da24599f572514dece'

  url      "https://github.com/bitcoinclassic/bitcoinclassic/releases/download/v#{version}/bitcoin-#{version}-osx.dmg"
  name     'Bitcoin Classic'
  homepage 'https://bitcoinclassic.com/'

  conflicts_with cask: 'bitcoin-core',
                 cask: 'bitcoin-unlimited',
                 cask: 'bitcoin-xt'

  depends_on     macos: '>= :mountain_lion'

  app 'Bitcoin-Qt.app', target: 'Bitcoin Classic.app'

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", '0755'
  end

  # Bitcoin classic names it preferences file same as Bitcoin Core:
  zap delete: '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist'
end
