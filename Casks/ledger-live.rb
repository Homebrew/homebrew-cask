cask 'ledger-live' do
  version '1.2.3'
  sha256 'f954d9b6e56f111b15de5e396051a9262cf3ff15837bc0d3a78ec6645b7a7eeb'

  # github.com/LedgerHQ/ledger-live-desktop was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/LedgerHQ/ledger-live-desktop/releases.atom'
  name 'Ledger Live'
  homepage 'https://www.ledgerwallet.com/live'

  auto_updates true

  app 'Ledger Live.app'
end
