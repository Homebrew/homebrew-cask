cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.9.3"
  sha256 arm:   "409f83806d639a928f0f12fa28406ab05fa4261357fc9a5f993899ce1a162bd6",
         intel: "a6977b9ba2b6e883ab200893e189cfe5a4dd26cff674fa48dc39f071222d653f"

  url "https://release.piclist.cn/latest/PicList-#{version}-#{arch}.dmg"
  name "PicList"
  desc "Cloud storage manager tool"
  homepage "https://piclist.cn/"

  livecheck do
    url "https://release.piclist.cn/latest/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
