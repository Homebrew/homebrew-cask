cask :v1 => 'electrum' do
  version '2.3.1'
  sha256 'd074b5ba71aa634e52293e7f98fb31d71a2d242f70d6bef8de6ddddbd1d45f6c'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
