cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.2.2"
  sha256 arm:   "abafe112000185332a5903995868e0a7c649a899e88e9c860098b084ba520cc7",
         intel: "fe90315828828459687e2dfc12be277eed73f9bd3e5749c339dba2b99d4165db"

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
