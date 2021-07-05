cask "butt" do
  version "0.1.30"
  sha256 "c5d1654c79d756f4bb13cc4d78c47b47b725acef418090ca74f24c08482f83f2"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"
end
