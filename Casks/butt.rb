cask "butt" do
  version "0.1.29"
  sha256 "3945df53b325d1c19d64662084b18392e92db2fde7ec2f06c2c9423f626b5fff"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"
end
