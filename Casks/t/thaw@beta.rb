cask "thaw@beta" do
  version "1.0.1-beta.7"
  sha256 "230d54653739f654dff07ae650679775fea4e552d41a77f0e7873e2667c8be91"

  url "https://github.com/stonerl/Thaw/releases/download/#{version}/Thaw_#{version}.zip"
  name "Thaw"
  desc "Menu bar manager"
  homepage "https://github.com/stonerl/Thaw/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta[._-]\d+)?)/i)
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
