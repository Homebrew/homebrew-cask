cask "phoenix-slides" do
  version "1.6.2"
  sha256 "0abfb07aca4dbfce3c35dc4263d0ad52c803ced67f90449bdc0bd07a65334298"

  url "https://github.com/gobbledegook/creevey/releases/download/v#{version}/phoenix-slides-#{version.no_dots.ljust(3, "0")}.dmg",
      verified: "github.com/gobbledegook/creevey/"
  name "Phoenix Slides"
  desc "Full-screen slideshow program"
  homepage "https://blyt.net/phxslides/"

  depends_on macos: :big_sur

  app "Phoenix Slides.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Phoenix Slides Help*",
    "~/Library/Preferences/net.blyt.phoenixslides.plist",
  ]
end
