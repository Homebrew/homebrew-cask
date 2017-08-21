cask 'commander-one' do
  version '1.7.3'
  sha256 'a3f807fc687b2a779cc542ea5b202a9dcc6ad476681f58b23924f7dba3f7d495'

  url 'http://mac.eltima.com/download/commander.dmg'
  appcast 'http://www.eltima.com/download/commander-update/settings.xml',
          checkpoint: '5f66f8dc28e57803c5b33b37b120d927782bb796d2b2e63dadf142ebe0dbbbe3'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  app 'Commander One.app'
end
