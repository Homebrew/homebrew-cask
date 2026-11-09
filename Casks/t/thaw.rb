cask "thaw" do
  version "2.1.0"
  sha256 "23fe850dd6b6e3f822af00a2da76c6d46135c2fa8a0deef8e8fa09d1efd3eec1"

  url "https://github.com/thaw-app/Thaw/releases/download/#{version}/Thaw_#{version}.zip"
  name "Thaw"
  desc "Menu bar manager"
  homepage "https://github.com/thaw-app/Thaw/"

  auto_updates true
  conflicts_with cask: "thaw@beta"
  depends_on macos: :tahoe

  app "Thaw.app"

  uninstall quit: ["com.stonerl.Thaw", "com.stonerl.Thaw.MenuBarItemService"]

  zap trash: [
    "~/Library/Application Scripts/*.com.stonerl.Thaw",
    "~/Library/Application Scripts/com.stonerl.Thaw.ThawControls",
    "~/Library/Application Support/Thaw",
    "~/Library/Caches/com.stonerl.Thaw",
    "~/Library/Containers/com.stonerl.Thaw.ThawControls",
    "~/Library/Group Containers/*.com.stonerl.Thaw",
    "~/Library/HTTPStorages/com.stonerl.Thaw",
    "~/Library/Logs/Thaw",
    "~/Library/Preferences/com.stonerl.Thaw.plist",
    "~/Library/WebKit/com.stonerl.Thaw",
  ]
end
