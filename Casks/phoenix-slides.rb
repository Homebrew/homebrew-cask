cask "phoenix-slides" do
  version "1.4.6"
  sha256 "00a1a76d0a61f5ac12f87ff34e7e5a4e3a02320ddeecead6e9a239dd364b0b96"

  url "https://github.com/gobbledegook/creevey/releases/download/v#{version}/phoenix-slides-#{version.no_dots}.dmg",
      verified: "github.com/gobbledegook/creevey/"
  name "Phoenix Slides"
  homepage "https://blyt.net/phxslides/"

  app "Phoenix Slides.app"
end
