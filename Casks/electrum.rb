cask :v1 => 'electrum' do
  version '2.3.2'
  sha256 '56c5a5fa3283de0b6d0af1e0700405be65bd081edaa11406a6e267ab48ed6df4'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
