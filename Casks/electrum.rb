cask :v1 => 'electrum' do
  version '2.4.2'
  sha256 '4ff76222390507ec935d7b10433bfc59eb06f2f41c02b8a5acf47b16368f4b6a'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
