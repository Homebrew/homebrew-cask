cask "thaw@beta" do
  version "2.0.0-rc.1"
  sha256 "3be7a39bd12586f4b627c4bd317f7053bb7f68eb889a3a2c59b07e6cc8dd698f"

  url "https://github.com/stonerl/Thaw/releases/download/#{version}/Thaw_#{version}.zip"
  name "Thaw"
  desc "Menu bar manager"
  homepage "https://github.com/stonerl/Thaw/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-(beta|RC)[._-]\d+)?)/i)
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Thaw.app"

  uninstall quit: ["com.stonerl.Thaw", "com.stonerl.Thaw.MenuBarItemService"]

  zap trash: [
    "~/Library/Caches/com.stonerl.Thaw",
    "~/Library/HTTPStorages/com.stonerl.Thaw",
    "~/Library/Preferences/com.stonerl.Thaw.plist",
    "~/Library/WebKit/com.stonerl.Thaw",
  ]
end
