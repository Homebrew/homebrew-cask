cask "scroll-reverser" do
  version "1.7.6"
  sha256 "0df563089470152d2cbf4cfd4e21f3be0dd45b0c334882bbf6dbbe2002afd4b8"

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
