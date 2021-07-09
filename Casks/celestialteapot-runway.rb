cask "celestialteapot-runway" do
  version "1.9,1902"
  sha256 "bd063e9f8db568aa2c57d5f7464dbdfead7b21dec8a80f112b0b78a349578114"

  url "https://celestialteapot.com/runway/dist/Runway_#{version.before_comma}.zip"
  name "Runway"
  desc "UML (Unified Modeling Language) design app"
  homepage "https://celestialteapot.com/runway/"

  livecheck do
    url "https://celestialteapot.com/runway/appcast/runway.rss"
    strategy :sparkle
  end

  app "Runway.app"
end
