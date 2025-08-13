cask "slideshower" do
  version "3.5"
  sha256 "884d69c82502ba0a4311f6183d7187c10171506f1311a345b06311e12a0905ac"

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
