cask "phoenix-slides" do
  version "1.5.5"
  sha256 "b64a8cb4b689e04d41f45a8c27c455369250456ba7ae586b0169a17dd4a73878"

  url "https://github.com/gobbledegook/creevey/releases/download/v#{version}/phoenix-slides-#{version.no_dots}.dmg",
      verified: "github.com/gobbledegook/creevey/"
  name "Phoenix Slides"
  desc "Full-screen slideshow program"
  homepage "https://blyt.net/phxslides/"

  depends_on macos: ">= :high_sierra"

  app "Phoenix Slides.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Phoenix Slides Help*",
    "~/Library/Preferences/net.blyt.phoenixslides.plist",
  ]
end
