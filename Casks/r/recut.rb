cask "recut" do
  version "4.3.4"
  sha256 "db979442ba85ac4eb9fe34fac1c7dbcadb579cf8c24bb4387287f3fce8496f0b"

  url "https://updates.getrecut.com/universal/Recut_#{version}_universal.dmg"
  name "Recut"
  desc "Remove silence from videos and automatically generate a cut list"
  homepage "https://getrecut.com/"

  livecheck do
    url "https://updates.getrecut.com/latest-mac"
    strategy :header_match
  end

  app "Recut.app"

  zap trash: [
    "~/Library/Application Support/Recut",
    "~/Library/Caches/com.tinywins.recut",
    "~/Library/Preferences/com.tinywins.recut.plist",
    "~/Library/Saved Application State/com.tinywins.recut.savedState",
  ]
end
