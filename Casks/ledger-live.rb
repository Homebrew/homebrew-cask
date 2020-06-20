cask 'ledger-live' do
  version '2.6.0'
  sha256 '49c7da9028ddfdcdb3564f0fd8c1e78b09fec37dc0b5f8693a1337f75917a273'

  # github.com/LedgerHQ/ledger-live-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/LedgerHQ/ledger-live-desktop/releases.atom'
  name 'Ledger Live'
  homepage 'https://www.ledgerwallet.com/live'

  auto_updates true

  app 'Ledger Live.app'
end
