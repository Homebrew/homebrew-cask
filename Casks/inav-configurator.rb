cask 'inav-configurator' do
  version '2.4.1'
  sha256 'df3b5d4c75063e1c93393e2af986c76d7bad7560f0cd597a8d36456f1cfb7003'

  url "https://github.com/iNavFlight/inav-configurator/releases/download/#{version}/INAV-Configurator_macOS_#{version}.zip"
  appcast 'https://github.com/iNavFlight/inav-configurator/releases.atom'
  name 'INAV Configurator'
  homepage 'https://github.com/iNavFlight/inav-configurator/'

  app 'INAV Configurator.app'
end
