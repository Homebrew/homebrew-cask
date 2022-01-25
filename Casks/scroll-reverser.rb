cask "scroll-reverser" do
  version "1.8.1,10490"
  sha256 "f651a38d6fe58534ad7d8ddd5aaaa6e1779c818ff30082d9bffef379fee62a2b"

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
