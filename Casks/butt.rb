cask "butt" do
  version "0.1.27"
  sha256 "b4b9487035d4716e60d3f0e5e842703487fd818558a43c2176617ac41e2dcff2"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  appcast "https://sourceforge.net/projects/butt/rss"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"
end
