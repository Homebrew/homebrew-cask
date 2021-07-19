cask "recut" do
  version "2.0.4,563"
  sha256 "8fbcf9953d4875efdaa208f3d64a14b4005c80bf209a763b25f880d821ceb82f"

  url "https://updates.getrecut.com/Recut-#{version.before_comma}.dmg"
  name "Recut"
  desc "Remove silence from videos and automatically generate a cut list"
  homepage "https://getrecut.com/"

  livecheck do
    url "https://updates.getrecut.com/appcast.xml"
    strategy :sparkle
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
