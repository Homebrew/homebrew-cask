cask "celestialteapot-runway" do
  version "2.0,2002"
  sha256 "c8598b519609baf8b17752202edd4c2274b9a0bb73d9e461274c0d35d61f70f1"

  url "https://celestialteapot.com/runway/dist/Runway_#{version.csv.first}.zip"
  name "Runway"
  desc "UML (Unified Modeling Language) design app"
  homepage "https://celestialteapot.com/runway/"

  livecheck do
    url "https://celestialteapot.com/runway/appcast/runway2.rss"
    strategy :sparkle
  end

  app "Runway.app"
end
