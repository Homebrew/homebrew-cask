cask 'commander-one' do
  version '1.7'
  sha256 '8e33f2fca68b3b7e445f86ee3b4cae8c180b18f28d9a11faf7133843f81b0e0c'

  url 'http://mac.eltima.com/download/commander.dmg'
  appcast 'http://www.eltima.com/download/commander-update/settings.xml',
          checkpoint: '73f40a368b723490bad6cac5f8d02c133df810cbded3b51ff7d6dbe2eb7896e2'
  name 'Commander One'
  homepage 'http://mac.eltima.com/file-manager.html'

  app 'Commander One.app'
end
