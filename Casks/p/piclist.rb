cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.8.3"
  sha256 arm:   "1f93b4eeee3fbc16875150a41505620d9427b4f94606040c655c81b00108f88e",
         intel: "f006def1f4fe4ec44e3d7de42c00df2ee5ccb5b5dd3bfccd27fb8e93727b9c7c"

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
