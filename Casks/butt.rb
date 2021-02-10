cask "butt" do
  version "0.1.28"
  sha256 "6bde5c48436699dd77dd26358d6f1947bbd74d95f3787818d481081434d7b52a"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  appcast "https://sourceforge.net/projects/butt/rss"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"
end
