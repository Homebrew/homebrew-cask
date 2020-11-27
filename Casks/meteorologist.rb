cask "meteorologist" do
  version "3.4.3"
  sha256 "51a6d80973547fa8ca1607fd531363d8c0470e9487d134f4b47cd7c87976c82c"

  # downloads.sourceforge.net/heat-meteo/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast "https://sourceforge.net/projects/heat-meteo/rss"
  name "Meteorologist"
  desc "Adjustable weather viewing application"
  homepage "https://heat-meteo.sourceforge.io/"

  app "Meteorologist.app"
end
