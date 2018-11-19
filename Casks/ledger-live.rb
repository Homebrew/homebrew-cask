cask 'ledger-live' do
  version '1.2.5'
  sha256 '15e8a9f62d02b9ee2f7cc306d2cc34af1027207264ec4f8672d4adacb48d3902'

  # github.com/LedgerHQ/ledger-live-desktop was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/LedgerHQ/ledger-live-desktop/releases.atom'
  name 'Ledger Live'
  homepage 'https://www.ledgerwallet.com/live'

  auto_updates true

  app 'Ledger Live.app'
end
