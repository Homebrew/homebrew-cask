cask :v1 => 'electrum' do
  version '2.1.1'
  sha256 '06204832ffdf251018ea94a9a83281193ae31c39c8655c578492eaec89ca2ab7'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
