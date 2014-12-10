cask :v1 => 'electrum' do
  version '1.9.8'
  sha256 'ad3818e34a9b3a292257377e337603ed362ff928f2054e92f764d771f0e49ec0'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  homepage 'http://electrum.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'Electrum.app'
end
