cask 'ledger-live' do
  version '2.0.1'
  sha256 '3f1cc1912d6168ab7f9524d1f334120737d2f30d7f4e844263f62c7935e7cc5e'

  # github.com/LedgerHQ/ledger-live-desktop was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/LedgerHQ/ledger-live-desktop/releases.atom'
  name 'Ledger Live'
  homepage 'https://www.ledgerwallet.com/live'

  auto_updates true

  app 'Ledger Live.app'
end
