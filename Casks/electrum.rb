cask :v1 => 'electrum' do
  version '2.2'
  sha256 '75494eceb8002764201ca2c5ee942acf679b09d0096f694c0f666f8a5bf7b8fd'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
