cask "thaw" do
  version "2.0.1"
  sha256 "aafefc186a96b2e0b7868b0966df4cbe3bf6737ced3f9b25a22d6c07dc6f8fba"

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
