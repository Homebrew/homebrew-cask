cask "scroll-reverser" do
  version "1.8.2,10505"
  sha256 "afe125b05ef1740f9a95101233006453b0e02bd71b6195608414bab5fb5d2c6a"

  url "https://pilotmoon.com/downloads/ScrollReverser-#{version.csv.first}.zip"
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
