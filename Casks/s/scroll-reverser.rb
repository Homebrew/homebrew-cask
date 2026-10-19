cask "scroll-reverser" do
  version "2.0"
  sha256 "9b304a08c902a123381d85c7e38e17a462e8b6edaba9336646a5769ff15b3f80"

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
    "~/Library/Preferences/com.pilotmoon.scroll-reverser.plist",
  ]
end
