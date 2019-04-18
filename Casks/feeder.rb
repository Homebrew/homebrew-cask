cask 'feeder' do
  version '3.6.5'
  sha256 '89b00013e4e3e908de13d3766e65334e696e08d35d0ca25808b99746a779fad2'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml"
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
