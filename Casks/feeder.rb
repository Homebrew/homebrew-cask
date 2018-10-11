cask 'feeder' do
  version '3.5.12'
  sha256 'f06738c10be3a0eabfe1ea1783df5f6dd61f7134506cf0a3c5cd8528e1df40f0'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
