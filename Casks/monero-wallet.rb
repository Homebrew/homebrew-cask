cask 'monero-wallet' do
  version '0.13.0.4'
  sha256 'c425f1b984cf00ffd1a9f1322e5da876aa07c106e975ca9fe08ee0a2d2956335'

  url "https://downloads.getmonero.org/gui/monero-gui-mac-x64-v#{version}.tar.bz2"
  appcast 'https://github.com/monero-project/monero-gui/releases.atom'
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
