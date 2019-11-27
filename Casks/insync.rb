cask 'insync' do
  version '3.0.24.40626'
  sha256 'dc1c5051eff07d603bb57aedd333ad05d7d99fe7a5bba20c1538c252ff8e4408'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
