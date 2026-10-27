cask "thaw@beta" do
  version "3.0.0-beta.4"
  sha256 "aae87670bdae0aea1a362be3fc8ec0893768f278c75868331c7e23ac7b897181"

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
