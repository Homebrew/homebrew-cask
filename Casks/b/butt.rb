cask "butt" do
  version "1.45.0"
  sha256 "bfc56ff9592829d66edcdbf8ff88cca8cd39b08c39af904b9b852c6d657c21ed"

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
