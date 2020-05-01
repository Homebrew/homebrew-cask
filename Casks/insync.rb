cask 'insync' do
  version '3.1.5.40801'
  sha256 'e6e336cd3ce6971e797c6e2a8cb2c8bfea510a4b33c812b820c6242af88d187e'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
