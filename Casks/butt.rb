cask "butt" do
  version "0.1.24"
  sha256 "454a49e41e9d17e305cc9dadec458b83f9f5b4790fafcab37daae08c72c07505"

  # sourceforge.net/butt/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast "https://sourceforge.net/projects/butt/rss"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"
end
