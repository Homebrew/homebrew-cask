cask "butt" do
  version "1.43.0"
  sha256 "0f160dc2265b0e696e45aa35f6f9f2d7dca9e4bbd102a9941bc942cd46982426"

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
