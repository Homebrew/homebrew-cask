cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.9.8"
  sha256 arm:   "1b3f8ffe24774e584c9c07bc4807bf53f49dcb6809befa3a15c602158db3c448",
         intel: "2fa2c9d8f0f61d26fb232aa1f64cf27314843e8a018f65dea01f2ff74274d0b2"

  url "https://release.piclist.cn/latest/PicList-#{version}-#{arch}.dmg"
  name "PicList"
  desc "Cloud storage manager tool"
  homepage "https://piclist.cn/"

  livecheck do
    url "https://release.piclist.cn/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
