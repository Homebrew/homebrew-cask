cask "meteorologist" do
  version "3.5.1"
  sha256 "fc81066d7a1fdb40d7ce78394ab4150fe98a766fba241d248241691a30d688f8"

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg",
      verified: "downloads.sourceforge.net/heat-meteo/"
  name "Meteorologist"
  desc "Adjustable weather viewing application"
  homepage "https://heat-meteo.sourceforge.io/"

  app "Meteorologist.app"
end
