cask :v1 => 'insync' do
  version '1.2.7.35123'
  sha256 '11078c45706b1a0a9da4b80a672c75f3605bbff957c9144ce91ec2ee3d6b7a6e'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'
  license :closed

  app 'Insync.app'
end
