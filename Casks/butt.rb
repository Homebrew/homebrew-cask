cask "butt" do
  version "0.1.32"
  sha256 "8a5181b77a00d9f8f13c3b47b68d8609d7d919f44a0405c0dfdbe635f69cf3b3"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"
end
