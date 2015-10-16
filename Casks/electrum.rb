cask :v1 => 'electrum' do
  version '2.4.4'
  sha256 '0cb4e9c1edabff6d2ec7884f27db6e21a94bdd05629677df9ab6f7d40692e1b4'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '6694d8de7be8ee5631bed9502bd5824b7f9470e6'
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
