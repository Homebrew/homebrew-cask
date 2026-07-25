cask "butt" do
  version "1.47.0"
  sha256 "09523c292c84a9aa6394173440c64ea70c451c9f9d4bd813e15d870895583f7b"

  url "https://danielnoethen.de/butt/release/#{version}/butt-#{version}.dmg"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  livecheck do
    url "https://danielnoethen.de/butt/release/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  depends_on macos: :big_sur

  app "butt.app"

  zap trash: "~/.buttrc"
end
