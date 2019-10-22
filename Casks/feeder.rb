cask 'feeder' do
  version '3.7'
  sha256 'e5f87c960b95be985105a9574eef65fa33d39405a10c9ca4c3ad2630c5b348ab'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml"
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  depends_on macos: '>= :high_sierra'

  app "Feeder #{version.major}.app"
end
