cask 'insync' do
  version '3.1.1.40765'
  sha256 'ef70eb27508deb31d6cec3965b081584001da7b27a2d10689ccca76adb26abea'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
