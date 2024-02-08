cask "recut" do
  version "2.1.7"
  sha256 "786c03f4a6396e04e4ee4f3e258ba420f78776114cacffa753ea67f518a7c7e7"

  url "https://updates.getrecut.com/Recut-#{version}.dmg"
  name "Recut"
  desc "Remove silence from videos and automatically generate a cut list"
  homepage "https://getrecut.com/"

  livecheck do
    url "https://updates.getrecut.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Recut.app"

  zap trash: [
    "~/Library/Caches/co.tinywins.recut",
    "~/Library/Preferences/co.tinywins.recut.plist",
    "~/Library/Saved Application State/co.tinywins.recut.savedState",
  ]
end
