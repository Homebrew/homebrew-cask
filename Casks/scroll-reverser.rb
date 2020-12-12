cask "scroll-reverser" do
  version "1.8"
  sha256 "57914a55c6ffc1687b2a5d2c559cd065dff90994814ce10741cb72c4b5ef1682"

  url "https://pilotmoon.com/downloads/ScrollReverser-#{version}.zip"
  appcast "https://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml"
  name "Scroll Reverser"
  desc "Tool to reverse the direction of scrolling"
  homepage "https://pilotmoon.com/scrollreverser/"

  app "Scroll Reverser.app"

  zap trash: [
    "~/Library/Caches/com.pilotmoon.scroll-reverser",
    "~/Library/Preferences/com.pilotmoon.scroll-reverser.plist",
  ]
end
