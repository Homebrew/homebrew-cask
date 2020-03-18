cask 'insync' do
  version '3.1.0.40756'
  sha256 '2e1e7ce343262a0476aabf81d19cf8039905207a98ce83a56927d66372cbb0b5'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
