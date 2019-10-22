cask 'ledger-live' do
  version '1.15.0'
  sha256 '5feba1d89b4da67e229d5a6fd0e0e2b10a407d80c124aefbfba60d6ce7d3dc72'

  # github.com/LedgerHQ/ledger-live-desktop was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/LedgerHQ/ledger-live-desktop/releases.atom'
  name 'Ledger Live'
  homepage 'https://www.ledgerwallet.com/live'

  auto_updates true

  app 'Ledger Live.app'
end
