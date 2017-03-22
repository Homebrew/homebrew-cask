cask 'electrum' do
  version '2.8.1'
  sha256 '2f1fa3e4e9ced6aa3836c8400ea05b7d53c240ace68d7e732fdc1930ac8a7f1d'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: '0fc587b748542e8b997b002ebe2c107145458d7f0412bb9f057a6413035b045a'
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
