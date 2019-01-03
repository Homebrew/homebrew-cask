cask 'insync' do
  version '1.5.6.37369'
  sha256 'e08d10e63e941a4185359a4a9949aabd6e7b80c04d79e2e178add7f52da9306b'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
