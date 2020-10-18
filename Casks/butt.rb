cask "butt" do
  version "0.1.24"
  sha256 "4f4e20b0d1056fa1129dd36a8848ef388a26188dfb3a0f5d8d98c99c3bebcb96"

  # sourceforge.net/butt/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast "https://sourceforge.net/projects/butt/rss"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"
end
