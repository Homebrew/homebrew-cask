cask "butt" do
  version "0.1.36"
  sha256 "9ffffce6f49e74426e0aab7d42fddf5c97427afcb5a8b48f34d36b42c0a35e0d"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"

  zap trash: "~/.buttrc"
end
