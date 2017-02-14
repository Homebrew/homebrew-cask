cask 'cloak' do
  version '2.1.3.4'
  sha256 '29d5784bb519a3425ab156e365f962154bc153e977fe310027a4235cb7272aea'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: '0468c297dbc2225d43376334e3406ef5d068ddcc21d35398a28b96f8412e3757'
  name 'Cloak'
  homepage 'https://www.getcloak.com/'

  app 'Cloak.app'
end
