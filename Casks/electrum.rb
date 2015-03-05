cask :v1 => 'electrum' do
  version '2.0'
  sha256 '2e493db6b4284495bb0932f41a28820cf84c30dcfb8dff11296f9e5523e80ade'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  name 'Electrum'
  homepage 'http://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
