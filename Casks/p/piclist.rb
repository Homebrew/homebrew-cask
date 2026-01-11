cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "1362805368cdde87b6776e3ec3dfd6f3115e2c46c4e99bff628ea0d80ce0cb80",
         intel: "7f0bb5ff0a5f42554c51f7878b7e957de22b92719f78e82fc8261d7c7f2047fa"

  url "https://github.com/Kuingsmile/PicList/releases/download/v#{version}/PicList-#{version}-#{arch}.dmg",
      verified: "github.com/Kuingsmile/PicList/"
  name "PicList"
  desc "Cloud storage manager tool"
  homepage "https://piclist.cn/"

  livecheck do
    url "https://release.piclist.cn/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
