cask 'insync' do
  version '3.1.0.40752'
  sha256 'cd02f725e09f888073112aca0017dd3710b81487d8af7145ee23f462061955b9'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
