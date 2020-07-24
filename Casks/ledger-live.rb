cask 'ledger-live' do
  version '2.9.0'
  sha256 'd37e55e460d1ed1b8f87498f4577473dcd276e7433af75d08bf17f373a050482'

  # github.com/LedgerHQ/ledger-live-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/LedgerHQ/ledger-live-desktop/releases.atom'
  name 'Ledger Live'
  homepage 'https://www.ledgerwallet.com/live'

  auto_updates true

  app 'Ledger Live.app'
end
