cask 'ramme' do
  version '3.2.1'
  sha256 '6e54d64515efcda9c7c28db3e17410e95eb7272848ed77b2bc7f7f7c8d41de81'

  url "https://github.com/terkelg/ramme/releases/download/v#{version}/Ramme-#{version}.dmg"
  appcast 'https://github.com/terkelg/ramme/releases.atom',
          checkpoint: 'd69bc670f9831c3085708d5a7ae3ab314e2b56b48178372725c1fe9ab484a06e'
  name 'Ramme'
  homepage 'https://github.com/terkelg/ramme/'

  app 'Ramme.app'
end
