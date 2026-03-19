cask "thaw@beta" do
  version "1.2.0-rc.1"
  sha256 "887bd21c3bd457bb38b7e7a8042c825ea1c48034d3dcc0a3342ff0762cb41472"

  url "https://github.com/stonerl/Thaw/releases/download/#{version}/Thaw_#{version}.zip"
  name "Thaw"
  desc "Menu bar manager"
  homepage "https://github.com/stonerl/Thaw/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-(beta|RC)[._-]\d+)?)/i)
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Thaw.app"

  zap trash: [
    "~/Library/Caches/com.stonerl.Thaw",
    "~/Library/HTTPStorages/com.stonerl.Thaw",
    "~/Library/Preferences/com.stonerl.Thaw.plist",
    "~/Library/WebKit/com.stonerl.Thaw",
  ]
end
