cask 'liri-browser' do
  version '0.3'
  sha256 'cdb39c6470f9e0a7b74e42dc31787172d2dacec6b074b2c3ecbce1b7b79dee7b'

  url "https://github.com/liri-project/liri-browser/releases/download/v#{version}/liri-browser-#{version}-osx.zip"
  appcast 'https://github.com/liri-project/liri-browser/releases.atom',
          checkpoint: '088ea30d055178d4ac1c3d3cdeed661fb4bdea3c17718f93a0c626b190597f65'
  name 'Liri Browser'
  homepage 'https://github.com/liri-project/liri-browser'

  app 'Liri Browser.app'
end
