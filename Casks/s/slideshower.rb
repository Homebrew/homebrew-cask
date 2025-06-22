cask "slideshower" do
  version "3.2"
  sha256 "7f1f30c134b4d32705cf36d47002de44abde6484d010611eb909e2b8905efb81"

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
