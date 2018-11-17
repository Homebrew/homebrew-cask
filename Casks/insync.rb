cask 'insync' do
  version '1.5.5.37367'
  sha256 '08a6e062927c57d7cd26fa8b51ffba1161c9c4cb1a2bc89cbbe9c1f5da558c7f'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
