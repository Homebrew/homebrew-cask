cask 'monero-wallet' do
  version '0.12.0.0'
  sha256 'f74c108d16bd70b6f0052ba4b3ce91fa3ca59622a0aee7d523a1f43967814c12'

  url "https://downloads.getmonero.org/gui/monero-gui-mac-x64-v#{version}.tar.bz2"
  appcast 'https://github.com/monero-project/monero-gui/releases.atom',
          checkpoint: '9d41471ebe0ed73d180a5b25276598f5b7c78c3b5977e953385a00fec884749c'
  name 'Monero Wallet'
  homepage 'https://getmonero.org/'

  app "monero-gui-v#{version}/monero-wallet-gui.app"

  zap trash: [
               '~/.bitmonero',
               '~/Monero',
               '~/Library/Preferences/org.getmonero.monero-core.plist',
               '~/Library/Saved Application State/com.yourcompany.monero-wallet-gui.savedState',
             ]
end
