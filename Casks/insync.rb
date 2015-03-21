cask :v1 => 'insync' do
  version '1.2.3.35090'
  sha256 '4200a514c7bdec87182f61b8bff72accc3a635a81aeaf7088d0a5a493c87ff28'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'
  license :closed

  app 'Insync.app'
end
