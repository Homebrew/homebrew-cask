cask 'insync' do
  version '3.1.2.40785'
  sha256 '21558020c8c657b1647c359aa32d1030067af3e7aac9a0d14fa1ea0c6d743bf0'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
