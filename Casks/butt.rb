cask "butt" do
  version "0.1.23"
  sha256 "ad17ecb463249767132c6721de96c0a196e32f3570966c0ec5b8a9ca83873980"

  # sourceforge.net/butt/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast "https://sourceforge.net/projects/butt/rss"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"
end
