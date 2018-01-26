cask 'electrum-ltc' do
  version '3.0.5.1'
  sha256 '901a9738fcebd323e341207d12ecc83fbbdf10627dfdf3c266e17cd4d267189e'

  url "https://electrum-ltc.org/download/electrum-ltc-#{version}.dmg"
  appcast 'https://electrum-ltc.org/',
          checkpoint: '68d7a87c77b8787dbb4d647559570d8ce16b2f0ca3ac247b4aeaa9b55014fc03'
  name 'Electrum-LTC'
  homepage 'https://electrum-ltc.org/'
  gpg "#{url}.asc", key_id: '9914864dfc33499c6ca2beea22453004695506fd'

  app 'Electrum-LTC.app'
end
