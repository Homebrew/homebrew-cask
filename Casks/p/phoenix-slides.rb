cask "phoenix-slides" do
  version "1.5.1"
  sha256 "2231c172a75c67da0087388b47d8603735890fcfd46f1ac7c6748041464c8519"

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
