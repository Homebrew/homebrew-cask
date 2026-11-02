cask "thaw@beta" do
  version "3.0.0-beta.5"
  sha256 "962fed84d7e9c04051af4e88ea921965ae735bf4941bdcd20747e0537a71e5ed"

  url "https://github.com/thaw-app/Thaw/releases/download/#{version}/Thaw_#{version}.zip"
  name "Thaw"
  desc "Menu bar manager"
  homepage "https://github.com/thaw-app/Thaw/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-(?:beta|rc)[._-]?\d+(?:\.\d+)*)?)$/i)
  end

  auto_updates true
  conflicts_with cask: "thaw"
  depends_on macos: :golden_gate

  app "Thaw.app"

  uninstall quit: ["com.stonerl.Thaw", "com.stonerl.Thaw.MenuBarItemService"]

  zap trash: [
    "~/Library/Application Scripts/com.stonerl.Thaw.ThawControls",
    "~/Library/Application Support/com.stonerl.Thaw",
    "~/Library/Application Support/Thaw",
    "~/Library/Caches/com.stonerl.Thaw",
    "~/Library/Containers/com.stonerl.Thaw.ThawControls",
    "~/Library/HTTPStorages/com.stonerl.Thaw",
    "~/Library/Preferences/com.stonerl.Thaw.plist",
    "~/Library/WebKit/com.stonerl.Thaw",
  ]
end
