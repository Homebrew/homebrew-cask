cask "phoenix-slides" do
  version "1.5.2"
  sha256 "ff8f83a2b279bb247f5d6efaa2e4fd726aa43984521e9c0a2c46105ab7818bc5"

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
