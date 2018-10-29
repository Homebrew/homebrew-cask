cask 'feeder' do
  version '3.6.1'
  sha256 '5299d895acaf7983558fd4f8754bccbe75b8568c14454922120a8574a4959ce5'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
