cask 'insync' do
  version '3.1.7.40811'
  sha256 '67302966fafde4ffc2eab57d16d9b4d67d9e1c7fda04fb07a6af7882d46d019b'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
