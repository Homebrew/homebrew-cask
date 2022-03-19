cask "butt" do
  version "0.1.33"
  sha256 "c003e71bd943ffbff047a605b781bf3816fdf92be006069d74e72fbc1d133f1e"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"

  zap trash: "~/.buttrc"
end
