cask 'insync' do
  version '1.3.6.36076'
  sha256 '9b3c70cb0effee47f4897898b7e3d0852586aab8f3810356083b2562b4cc158c'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'
  license :closed

  app 'Insync.app'
end
