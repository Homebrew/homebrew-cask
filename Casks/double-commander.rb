cask 'double-commander' do
  version '0.7.5-7092'
  sha256 '252ce3504da068d36fd29e7ee4bb8db7b178eff383fc904447762e0d4346e4fd'

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss',
          checkpoint: 'e1e58e0ffe55b19752cae1d4f6cc80226644b5e1de14c95f612b23bde111f4b8'
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'

  app 'Double Commander.app'
end
