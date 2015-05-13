cask :v1 => 'electrum' do
  version '2.1.1'
  sha256 'dcdd147c0e2d9b7730b957d29539194021c899ada8cd66d77ea2d2c4a031b474'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
