cask "butt" do
  version "0.1.31"
  sha256 "d88ea6d6924741462ad152322287810de0e01c76f5178bda550e4a6b4ed98b95"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"
end
