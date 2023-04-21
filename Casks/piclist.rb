cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.7.1"
  sha256 arm:   "ed4b422c99ecabb669243d8495492a120ce00f17c948e6ff139878669d982f50",
         intel: "75565f41927fe97628dc9e46d64323fd10a1a332e9744ffd7a7f14d8b1742604"

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
