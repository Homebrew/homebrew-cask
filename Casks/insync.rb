cask 'insync' do
  version '3.2.1.40839'
  sha256 '10eb4351e37b1e8b0c87bd26313ca371595207acfad4932bfafb92e44dc15732'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
