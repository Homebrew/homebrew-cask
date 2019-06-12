cask 'feeder' do
  version '3.6.8'
  sha256 '4399609c1b04b1b92aa51bf9c240fc7dfec49e534eae014dbe750e7c7bbdfd2d'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml"
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
