cask "scroll-reverser" do
  version "1.8,10433"
  sha256 "57914a55c6ffc1687b2a5d2c559cd065dff90994814ce10741cb72c4b5ef1682"

  url "https://pilotmoon.com/downloads/ScrollReverser-#{version.before_comma}.zip"
  name "Scroll Reverser"
  desc "Tool to reverse the direction of scrolling"
  homepage "https://pilotmoon.com/scrollreverser/"

  livecheck do
    url "https://pilotmoon.com/appcast/sr.xml"
    strategy :sparkle
  end

  app "Scroll Reverser.app"

  zap trash: [
    "~/Library/Application Scripts/com.pilotmoon.scroll-reverser.launcher",
    "~/Library/Caches/com.pilotmoon.scroll-reverser",
    "~/Library/Containers/com.pilotmoon.scroll-reverser.launcher",
    "~/Library/Preferences/com.pilotmoon.scroll-reverser.plist",
  ]
end
