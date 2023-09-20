cask "butt" do
  version "0.1.39"
  sha256 "77b96c96636e0477300e9c2de9a09ef9d459585cb7ee868f0692164aff4cd064"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"

  zap trash: "~/.buttrc"
end
