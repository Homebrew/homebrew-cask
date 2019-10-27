cask 'feeder' do
  version '3.7.1'
  sha256 'f9f4773ffb187987be74f3ba9f0092770b1a315ee798a77b3cb49b290022762e'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml"
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  depends_on macos: '>= :high_sierra'

  app "Feeder #{version.major}.app"
end
