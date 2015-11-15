cask :v1 => 'electrum-ltc' do
  version '2.3.2.2'
  sha256 '8dbd0245c43f953822848ed8827df581468340a0873e1152919b30c29774271e'

  url "https://electrum-ltc.org/download/Electrum-LTC-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  name 'Electrum-LTC'
  homepage 'https://electrum-ltc.org/'
  license :gpl

  app 'Electrum-LTC.app'
end
