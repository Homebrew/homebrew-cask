cask 'ramme' do
  version '3.2.3'
  sha256 '4213dfe8483f0a834b2ff906c1bf1524608d1e5ef761dcaeb87ef18e3b99bba2'

  url "https://github.com/terkelg/ramme/releases/download/v#{version}/Ramme-#{version}.dmg"
  appcast 'https://github.com/terkelg/ramme/releases.atom',
          checkpoint: '0998dc96479d280f8423e683a681432aeb11d5a661b9ec17572927bbcd22b0b5'
  name 'Ramme'
  homepage 'https://github.com/terkelg/ramme/'

  app 'Ramme.app'

  caveats do
    discontinued
  end
end
