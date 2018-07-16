cask 'ledger-live' do
  version '1.0.2'
  sha256 '87e20f0584ed5bcf42148e468708b406f709b470a8654780631b614f47aabd13'

  # github.com/LedgerHQ/ledger-live-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/LedgerHQ/ledger-live-desktop/releases.atom'
  name 'Ledger Live'
  homepage 'https://www.ledgerwallet.com/live'

  app 'Ledger Live.app'
end
