cask 'monero-wallet' do
  version '0.15.0.4'
  sha256 '9b0164cd90345c5fd4014a6bc8258465c2e5aae7c527c7f64a2d795830db7ae4'

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
