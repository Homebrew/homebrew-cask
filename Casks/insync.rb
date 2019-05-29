cask 'insync' do
  version '1.5.7.37371'
  sha256 'b98a6d37a6301805e43c04767e90d662a82b636480a2cccd055c42c027b73b01'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
