cask "butt" do
  version "0.1.35"
  sha256 "d4ad589ca95c237f8295e5fad16951dd4a53d5d5b7545dab3555344d9277738f"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"

  zap trash: "~/.buttrc"
end
