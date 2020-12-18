cask "butt" do
  version "0.1.25"
  sha256 "d3ca79e4de20c71385da25738b721ef3953ef96eed94b09326112f5f83e060ba"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  appcast "https://sourceforge.net/projects/butt/rss"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"
end
