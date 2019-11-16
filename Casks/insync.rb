cask 'insync' do
  version '3.0.23.40579'
  sha256 '1efe026ebf4a3967a1c8d7a56d7d147165ce4d3037238c7f87fe57afb054d2d7'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
