cask "thaw@beta" do
  version "2.0.0-beta.2"
  sha256 "2ae73f50ba2228975dead17772a2c5ba72133eefd95a17cd8512687e70c94a9a"

  url "https://github.com/stonerl/Thaw/releases/download/#{version}/Thaw_#{version}.zip"
  name "Thaw"
  desc "Menu bar manager"
  homepage "https://github.com/stonerl/Thaw/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-(beta|RC)[._-]\d+)?)/i)
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Thaw.app"

  zap trash: [
    "~/Library/Caches/com.stonerl.Thaw",
    "~/Library/HTTPStorages/com.stonerl.Thaw",
    "~/Library/Preferences/com.stonerl.Thaw.plist",
    "~/Library/WebKit/com.stonerl.Thaw",
  ]
end
