cask 'monero-wallet' do
  version '0.16.0.0'
  sha256 '96effab969c1d4f715d323835d98b202e33f75b835ed4587bb49a76fb288bc6d'

  url "https://downloads.getmonero.org/gui/monero-gui-mac-x64-v#{version}.tar.bz2"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads.getmonero.org/gui/mac64'
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
