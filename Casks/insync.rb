cask 'insync' do
  version '1.4.5.37069'
  sha256 '3d0f63d709b65ff44fc32aae34a2456809ac2e53ed9f4e1effbe35ab5b5dce5f'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
