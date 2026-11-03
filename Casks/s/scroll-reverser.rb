cask "scroll-reverser" do
  version "2.1.1"
  sha256 "654a2bbb368f39cf7ca9adcb4d83c12c572f2c64886ef5012949afd81cf69691"

  url "https://pilotmoon.com/downloads/ScrollReverser-#{version}.zip"
  name "Scroll Reverser"
  desc "Tool to reverse the direction of scrolling"
  homepage "https://pilotmoon.com/scrollreverser/"

  livecheck do
    url "https://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Scroll Reverser.app"

  zap trash: [
    "~/Library/Caches/com.pilotmoon.scroll-reverser",
    "~/Library/HTTPStorages/com.pilotmoon.scroll-reverser",
    "~/Library/Preferences/com.pilotmoon.scroll-reverser.plist",
  ]
end
