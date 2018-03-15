cask 'insync' do
  version '1.3.24.36188'
  sha256 '3d7953dbc6c75d930cbc1dc1a47af1e0b821912b4188e36178b8c0d07e8bf065'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
