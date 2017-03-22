cask 'insync' do
  version '1.3.14.36131'
  sha256 'b19d6e43134e3630ec8b710742ee1a729d076ad9f19aa4cd22eaa3ae96965df3'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  app 'Insync.app'
end
