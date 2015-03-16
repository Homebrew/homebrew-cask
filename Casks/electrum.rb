cask :v1 => 'electrum' do
  version '2.0.3'
  sha256 '8a25d5a7a742a4ee976c2411425cda7b6a31b0507459d70088fbb387a533fbb7'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  name 'Electrum'
  homepage 'http://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
