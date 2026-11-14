cask "slideshower" do
  version "4.14"
  sha256 "898c9ee831678a8a8c6782110d73bc59c66cce5e29757f1e3b36880336827173"

  url "https://slideshower.com/slideshower_#{version.dots_to_underscores}.dmg"
  name "Slideshower for macOS"
  desc "Slideshow application"
  homepage "https://slideshower.com/"

  livecheck do
    url "https://slideshower.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :monterey

  app "Slideshower for macOS.app"

  zap trash: [
    "~/Library/Application Scripts/trybulski.slideshower",
    "~/Library/Containers/trybulski.slideshower",
  ]
end
