cask 'insync' do
  version '3.0.31.40739'
  sha256 '0dee67e72bf7044f712ecb4a4cb6666a9a5dda134eea5bd8b02e064308223515'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
