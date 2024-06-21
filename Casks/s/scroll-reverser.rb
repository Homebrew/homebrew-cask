cask "scroll-reverser" do
  version "1.9"
  sha256 "0961dbb6f8ef4e5edd432bf0dd6e7cdd4219d8bac8b3baa3f576af9a42bbf585"

  url "https://pilotmoon.com/downloads/ScrollReverser-#{version}.zip"
  name "Scroll Reverser"
  desc "Tool to reverse the direction of scrolling"
  homepage "https://pilotmoon.com/scrollreverser/"

  livecheck do
    url "https://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :ventura"

  app "Scroll Reverser.app"

  zap trash: [
    "~/Library/Caches/com.pilotmoon.scroll-reverser",    
    "~/Library/Preferences/com.pilotmoon.scroll-reverser.plist",
  ]
end
