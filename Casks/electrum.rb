cask 'electrum' do
  version '2.6'
  sha256 '93021b8d88c6e23e9ce721eef71751a2a3b2fd819d5aa0eeaf72a60a48938e3e'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl
  gpg "#{url}.asc",
      key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
