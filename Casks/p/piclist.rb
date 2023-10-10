cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.6.3"
  sha256 arm:   "dba8065a0ea99b15a180dd54d794b360dcbca7c7bdbd59c3935679aeb6761b05",
         intel: "a8e07e744177f826a4b7f141a7296441fa0991b09dd10bf5f219c6c5a27ba907"

  url "https://release.piclist.cn/latest/PicList-#{version}-#{arch}.dmg"
  name "PicList"
  desc "Cloud storage manager tool"
  homepage "https://piclist.cn/"

  livecheck do
    url "https://release.piclist.cn/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
