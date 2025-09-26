cask "slideshower" do
  version "3.8"
  sha256 "2216b3bd647e86edb77f21c9fc998f2dfc9dbc4e08043448a89f1f2a687d81f2"

  url "https://slideshower.com/slideshower_#{version.dots_to_underscores}.dmg"
  name "Slideshower for macOS"
  desc "Slideshow application"
  homepage "https://slideshower.com/"

  livecheck do
    url "https://slideshower.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "Slideshower for macOS.app"

  zap trash: [
    "~/Library/Application Scripts/trybulski.slideshower",
    "~/Library/Containers/trybulski.slideshower",
  ]
end
