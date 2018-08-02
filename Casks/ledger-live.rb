cask 'ledger-live' do
  version '1.1.0'
  sha256 'ffc566dbc06eac301e03c6439e27d5736d5fef6c8f87cd7c9139c24d9cd57172'

  # github.com/LedgerHQ/ledger-live-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/LedgerHQ/ledger-live-desktop/releases.atom'
  name 'Ledger Live'
  homepage 'https://www.ledgerwallet.com/live'

  auto_updates true

  app 'Ledger Live.app'
end
