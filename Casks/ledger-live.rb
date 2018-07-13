cask 'ledger-live' do
  version '1.0.1'
  sha256 '4a1395a912a88435287b09a211a1c62c6644999bf11d905436aa4aad353c52e7'

  # github.com/LedgerHQ/ledger-live-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/LedgerHQ/ledger-live-desktop/releases.atom'
  name 'Ledger Live'
  homepage 'https://www.ledgerwallet.com/live'

  app 'Ledger Live.app'
end
