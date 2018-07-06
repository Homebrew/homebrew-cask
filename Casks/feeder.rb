cask 'feeder' do
  version '3.5.11'
  sha256 'f34b4fc3ce2d78e860d0ba70cd85bd09e0c659d43dfde3c074fb419becd2a902'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
