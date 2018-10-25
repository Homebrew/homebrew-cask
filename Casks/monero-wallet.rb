cask 'monero-wallet' do
  version '0.13.0.3'
  sha256 'c4da9847d65f5d1051522833c7518b7137cdcbb69399ec0aac4036371f293d29'

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
