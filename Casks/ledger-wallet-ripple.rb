cask 'ledger-wallet-ripple' do
  version '1.0.1 '
  sha256 '55a5ad93b78d39edefe6d115d70da789254a7dc3b6d19d8662768f5b2788b5aa'

  # github.com/LedgerHQ/ledger-wallet-ripple was verified as official when first introduced to the cask
  url 'https://github.com/LedgerHQ/ledger-wallet-ripple/releases/download/1.0.1/ledger_wallet_ripple_osx.pkg'
  name 'Ledger Wallet Ripple'
  homepage 'https://www.ledgerwallet.com/apps/ripple'

  pkg 'ledger_wallet_ripple_osx.pkg'

  uninstall pkgutil: 'co.ledger.wallet.ripple'
end
