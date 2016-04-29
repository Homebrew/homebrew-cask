cask 'caprine' do
  version '1.3.0'
  sha256 '7067d101d70b7066c989bab00b67a35ddb2b4f5e31f1345b01a4693f1b8df4ec'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'd9e969f55418744f92b70eb0694703c77d4a7a666d642f93ab6746efbee48ac2'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
