cask "butt" do
  version "0.1.24"
  sha256 "8c82ca85909c3ae3003ead449598811bc9a8ffa3ea169d975a86a910372cecc0"

  # sourceforge.net/butt/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast "https://sourceforge.net/projects/butt/rss"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"
end
