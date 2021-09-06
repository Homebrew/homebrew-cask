cask "doubletwist" do
  version "3.2.0,11870"
  sha256 :no_check

  url "http://download.doubletwist.com/mac/doubleTwist.dmg"
  name "doubleTwist"
  homepage "https://www.doubletwist.com/desktop"

  app "doubleTwist.app"

  zap trash: [
    "~/Library/Application Support/doubleTwist",
    "~/Library/Preferences/com.doubleTwist.desktop.plist",
    "~/Library/Caches/com.doubleTwist.desktop",
  ]
end
