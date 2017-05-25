cask 'ramme' do
  version '3.2.0'
  sha256 '1a26355a331f5e9eb27a174f4f4e3d65cec5bf63435a1c6155486070a32a178f'

  url "https://github.com/terkelg/ramme/releases/download/v#{version}/Ramme-#{version}.dmg"
  appcast 'https://github.com/terkelg/ramme/releases.atom',
          checkpoint: 'd842097f78a5f6f638cfa0e5b4eadcc0fc36955022733f0fb6fde0ac6b7e6314'
  name 'Ramme'
  homepage 'https://github.com/terkelg/ramme/'

  app 'Ramme.app'
end
