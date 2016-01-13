cask 'commander-one' do
  version :latest
  sha256 :no_check

  url 'http://mac.eltima.com/download/commander.dmg'
  appcast 'http://www.eltima.com/download/commander-update/settings.xml',
          :sha256 => 'a42fc2e188fc9a12d338bae4ba37485ced7d1edda51a9e4ed08c4ad2222dcfce'
  name 'Commander One'
  homepage 'http://mac.eltima.com/file-manager.html'
  license :freemium

  app 'Commander One.app'
end
