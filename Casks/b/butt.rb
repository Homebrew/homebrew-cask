cask "butt" do
  version "1.44.0"
  sha256 "8511e32aab5ed97473961a3f7d6b5c8d487db85d310ad029ce6895cfb6229104"

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
