cask 'monero-wallet' do
  version '0.11.1.0'
  sha256 '4f63ac3e9c5f87f8d8318ff89cdbfa954716e8addbdc8fcd0352fe678b84f8e2'

  url "https://downloads.getmonero.org/gui/monero-gui-mac-x64-v#{version}.tar.bz2"
  appcast 'https://github.com/monero-project/monero-gui/releases.atom',
          checkpoint: '8103e0f7aff022cf6d8ae8aff8c82dc2174f1a766a2b02de5c382e56a8564588'
  name 'Monero Wallet'
  homepage 'https://getmonero.org/'

  app 'monero-wallet-gui.app'

  zap trash: [
               '~/.bitmonero',
               '~/Monero',
               '~/Library/Preferences/org.getmonero.monero-core.plist',
               '~/Library/Saved Application State/com.yourcompany.monero-wallet-gui.savedState',
             ]
end
