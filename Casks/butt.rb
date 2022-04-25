cask "butt" do
  version "0.1.34"
  sha256 "0d3d324c150b4cff87c3ca8977cd2fc1811e2bd35162100e721c4097877925f5"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"

  zap trash: "~/.buttrc"
end
