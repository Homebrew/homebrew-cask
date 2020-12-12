cask "celestialteapot-runway" do
  version "1.9"
  sha256 "bd063e9f8db568aa2c57d5f7464dbdfead7b21dec8a80f112b0b78a349578114"

  url "http://celestialteapot.com/runway/dist/Runway_#{version}.zip"
  appcast "http://celestialteapot.com/runway/appcast/runway.rss"
  name "Runway"
  homepage "http://celestialteapot.com/runway/"

  app "Runway.app"
end
