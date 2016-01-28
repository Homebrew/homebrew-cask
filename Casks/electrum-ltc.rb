cask 'electrum-ltc' do
  version '2.6.0.1'
  sha256 '2bac4a837ad2c3b845f2ef4c826b2e09e1293d51ce93172509933c6f6f42ce98'

  url "https://electrum-ltc.org/download/Electrum-LTC-#{version}.dmg"
  name 'Electrum-LTC'
  homepage 'https://electrum-ltc.org/'
  license :gpl
  gpg "#{url}.asc",
      key_id: '9914864dfc33499c6ca2beea22453004695506fd'

  app 'Electrum-LTC.app'
end
