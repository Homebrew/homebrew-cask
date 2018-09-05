cask 'ripple-wallet' do
  version '1.4.1'
  sha256 '7e892b427f8c7fb52797c6e1faa32f1ef8e7c5bf5910f4a4ab341d0b72a039d6'

  # s3.amazonaws.com/static.rippex.net/client was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.rippex.net/client/ripple-wallet-osx64-#{version}.zip"
  appcast 'https://github.com/rippex/ripple-client-desktop/releases.atom'
  name 'Ripple Wallet'
  homepage 'https://rippex.net/carteira-ripple.php#/'

  app "Ripple-Wallet-osx64-#{version}.app"
end
