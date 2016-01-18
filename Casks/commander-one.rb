cask 'commander-one' do
  version '1.2'
  sha256 'af0e92a611e6ed2e091ff44a20bc8dee23f09de5efa66880ff58823e51959225'

  url 'http://mac.eltima.com/download/commander.dmg'
  appcast 'http://www.eltima.com/download/commander-update/settings.xml',
          checkpoint: 'a42fc2e188fc9a12d338bae4ba37485ced7d1edda51a9e4ed08c4ad2222dcfce'
  name 'Commander One'
  homepage 'http://mac.eltima.com/file-manager.html'
  license :freemium

  app 'Commander One.app'
end
