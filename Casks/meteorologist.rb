cask "meteorologist" do
  version "3.4.2"
  sha256 "4c1276f40f8f4d05dfb870f35254e3e52ec8ce3f6db93ad7f8089ea5c00535a1"

  # downloads.sourceforge.net/heat-meteo/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast "https://sourceforge.net/projects/heat-meteo/rss"
  name "Meteorologist"
  desc "Adjustable weather viewing application"
  homepage "https://heat-meteo.sourceforge.io/"

  app "Meteorologist.app"
end
