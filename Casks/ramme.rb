cask 'ramme' do
  version '1.0.0'
  sha256 '1101f9a671547192580c5898b1a22e07ff0c143fb7934d1e53c4a2d587317e38'

  url "https://github.com/terkelg/ramme/releases/download/#{version}/Ramme-osx-#{version}.zip"
  appcast 'https://github.com/terkelg/ramme/releases.atom',
          checkpoint: '09dfb3a5d3bf1762a29a79a533b9f073be840c9457fe6fe00ed442d6fc045cb7'
  name 'Ramme'
  homepage 'https://github.com/terkelg/ramme/'
  license :mit

  app 'Ramme.app'
end
