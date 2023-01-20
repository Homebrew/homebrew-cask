cask "butt" do
  version "0.1.37"
  sha256 "6a246d21c0bbe18592972ee15090ed91c85c7f5bea0f768ffd65ac9536a90845"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"

  zap trash: "~/.buttrc"
end
