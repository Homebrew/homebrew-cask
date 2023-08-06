cask "butt" do
  version "0.1.38"
  sha256 "ce53e1d401dedb2bc7dfd0ad35cc668f290c2c2f1ff558824233cbdf7a865a5a"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"

  zap trash: "~/.buttrc"
end
