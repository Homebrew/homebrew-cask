cask 'ledger-live' do
  version '1.0.0'
  sha256 'e23f85f48d7685da06d6308bd70f2163ca9be8d543190379c00535b3997b718e'

  # github.com/LedgerHQ/ledger-live-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/LedgerHQ/ledger-live-desktop/releases.atom'
  name 'Ledger Live'
  homepage 'https://www.ledgerwallet.com/live'

  app 'Ledger Live.app'
end
