cask "phoenix-slides" do
  version "1.5.4"
  sha256 "a4b21691d78df5671c429afe17d1c4ad4202a50b86d68f6c5898c213743c000b"

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
