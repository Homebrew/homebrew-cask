cask 'insync' do
  version '3.1.6.40808'
  sha256 'e8331f76941c7dacf13a10d07b037639b1c69a430ecc976dabb4df4ce5faecf3'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
