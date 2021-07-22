cask "meteorologist" do
  version "3.4.6"
  sha256 "285344d068f1ffdd42eb5c8268ab29e7cf73e4b897d9a207ca3da991b65b88b5"

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg",
      verified: "downloads.sourceforge.net/heat-meteo/"
  name "Meteorologist"
  desc "Adjustable weather viewing application"
  homepage "https://heat-meteo.sourceforge.io/"

  app "Meteorologist.app"
end
