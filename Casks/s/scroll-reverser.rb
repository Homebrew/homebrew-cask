cask "scroll-reverser" do
  version "2.0.2"
  sha256 "5d0978885f34c5f0d99d3b50578f1d0550b0be7ed069870f440a3a0ddbc86f99"

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
