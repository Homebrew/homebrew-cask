cask "meteorologist" do
  version "3.4.4"
  sha256 "7a4930c742ae6f446f6337e7141fa5df5af56773ad0e8e32e7c9d2d008cc9fe8"

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg",
      verified: "downloads.sourceforge.net/heat-meteo/"
  name "Meteorologist"
  desc "Adjustable weather viewing application"
  homepage "https://heat-meteo.sourceforge.io/"

  app "Meteorologist.app"
end
