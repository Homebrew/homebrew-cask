cask 'electrum' do
  version '2.7.0'
  sha256 '8ac7a7c0844e43ff6e946049430d889051d775ebd4fa38ba520bef07f92b2c1e'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc",
      key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
