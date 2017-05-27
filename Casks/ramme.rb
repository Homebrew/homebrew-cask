cask 'ramme' do
  version '3.2.1'
  sha256 '6e54d64515efcda9c7c28db3e17410e95eb7272848ed77b2bc7f7f7c8d41de81'

  url "https://github.com/terkelg/ramme/releases/download/v#{version}/Ramme-#{version}.dmg"
  appcast 'https://github.com/terkelg/ramme/releases.atom',
          checkpoint: 'c698b2e8a3c248b7463efa4fe9fa4dee7404c23b3ac697d17c3ed66ebf640b5d'
  name 'Ramme'
  homepage 'https://github.com/terkelg/ramme/'

  app 'Ramme.app'
end
