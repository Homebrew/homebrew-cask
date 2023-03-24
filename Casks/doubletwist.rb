cask "doubletwist" do
  version "3.2.0,11870"
  sha256 :no_check

  url "http://download.doubletwist.com/mac/doubleTwist.dmg"
  name "doubleTwist"
  desc "Sync your music, videos and pictures over USB or WiFi"
  homepage "https://www.doubletwist.com/desktop"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "doubleTwist.app"

  zap trash: [
    "~/Library/Application Support/doubleTwist",
    "~/Library/Caches/com.doubleTwist.desktop",
    "~/Library/Preferences/com.doubleTwist.desktop.plist",
  ]
end
