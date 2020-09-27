cask "butt" do
  version "0.1.23"
  sha256 "d7c755b5335162ab159e30d56b2ad9b7b8aa707f09723c016bbace0f557b7498"

  # sourceforge.net/butt/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast "https://sourceforge.net/projects/butt/rss"
  name "Broadcast Using This Tool"
  homepage "https://danielnoethen.de/"

  app "butt.app"
end
