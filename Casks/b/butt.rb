cask "butt" do
  version "1.46.0"
  sha256 "be72a93eb58cc3bc4de4d14b450220f8604ad3f1e0ac81dcec234672c93b7fe9"

  url "https://danielnoethen.de/butt/release/#{version}/butt-#{version}.dmg"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  livecheck do
    url "https://danielnoethen.de/butt/release/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  app "butt.app"

  zap trash: "~/.buttrc"
end
