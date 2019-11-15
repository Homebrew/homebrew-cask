cask 'feeder' do
  version '3.7.2'
  sha256 'd64a11b17cdeb675f075c68442bfd72f37e779431fb1776ed1aed27d7e528c87'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml"
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  depends_on macos: '>= :high_sierra'

  app "Feeder #{version.major}.app"
end
