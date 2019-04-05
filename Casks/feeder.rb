cask 'feeder' do
  version '3.6.2'
  sha256 '1e9952d59cdb18ebe9ca38df290e6f176499df82841d5b5be8f3ad0502edf96a'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml"
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
