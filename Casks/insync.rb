cask 'insync' do
  version '3.0.16.40306'
  sha256 '75a5dd3846f00f391a1a5248ab52fb8ab7f409dce2592d6914cd2d2e0ab693c2'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
