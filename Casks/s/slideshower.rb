cask "slideshower" do
  version "4.0"
  sha256 "546a06938f222647a90bf67c988a78a7e598cf459c91ab8737e265f1cad6de4c"

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
