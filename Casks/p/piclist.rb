cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "2d4a7f62fccf8568e221094727f62575d17de67a98c5039beec9d9e2361ab18f",
         intel: "c018b94dba927fcf806b5f8c28f40d449b6f65317d21c6e8fd25e7696a5f1ad1"

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
