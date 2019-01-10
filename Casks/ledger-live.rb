cask 'ledger-live' do
  version '1.2.7'
  sha256 'c4bfe91b03052518bd4aa782403b9e05dae8b9b1d6a43dd262c8d7d3c3e11e8

  # github.com/LedgerHQ/ledger-live-desktop was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/LedgerHQ/ledger-live-desktop/releases.atom'
  name 'Ledger Live'
  homepage 'https://www.ledgerwallet.com/live'

  auto_updates true

  app 'Ledger Live.app'
end
