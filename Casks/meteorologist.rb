cask "meteorologist" do
  version "3.4.3"
  sha256 "df73f484f6bc6a5d800c8fa1cc2fd91013f310dbf162288c1686dcd865813c9f"

  # downloads.sourceforge.net/heat-meteo/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast "https://sourceforge.net/projects/heat-meteo/rss"
  name "Meteorologist"
  desc "Adjustable weather viewing application"
  homepage "https://heat-meteo.sourceforge.io/"

  app "Meteorologist.app"
end
