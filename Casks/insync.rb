cask 'insync' do
  version '1.4.4.37065'
  sha256 '1b74a89a0ea6df57a999dfd09f59cffaee7236f6e63011224b93ef69acfbc669'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
