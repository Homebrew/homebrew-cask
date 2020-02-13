cask 'insync' do
  version '3.0.29.40727'
  sha256 '82c87ed074b31772ca49b5c2841913c81f47f6e5283c9e79f7c8de0b485cc842'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
