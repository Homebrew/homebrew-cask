cask 'ramme' do
  version '3.2.2'
  sha256 '7cb20a25a198c0dc1ccf915adb28319e8386dc98128e34ce01f65f99cdc94813'

  url "https://github.com/terkelg/ramme/releases/download/v#{version}/Ramme-#{version}.dmg"
  appcast 'https://github.com/terkelg/ramme/releases.atom',
          checkpoint: 'd69bc670f9831c3085708d5a7ae3ab314e2b56b48178372725c1fe9ab484a06e'
  name 'Ramme'
  homepage 'https://github.com/terkelg/ramme/'

  app 'Ramme.app'
end
