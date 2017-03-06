cask 'commander-one' do
  version '1.7.1'
  sha256 '3a241ddf99654c5eace926a958ae239494fe20db3eed97489203947940a7433c'

  url 'http://mac.eltima.com/download/commander.dmg'
  appcast 'http://www.eltima.com/download/commander-update/settings.xml',
          checkpoint: '591064c625131d29700702cfd2587de5620a648c16e8c159fbd589742682ea78'
  name 'Commander One'
  homepage 'http://mac.eltima.com/file-manager.html'

  app 'Commander One.app'
end
