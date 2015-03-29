cask :v1 => 'electrum' do
  version '2.0.4'
  sha256 '57622e96da194c3665f5829940dd4dd76cb1968a2f0ac89a63f574303c842319'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  name 'Electrum'
  homepage 'http://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
