cask 'insync' do
  version '3.1.8.40816'
  sha256 '1a8b59e0909d1f662b80306962403f80ab5e3b058aa659e77b94cb81ef18ffa7'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
