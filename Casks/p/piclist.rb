cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.5.0"
  sha256 arm:   "783eab8c9413a8a8ad2ef7a6ee0524cbc89e16f2dba0a5219eda638063e63884",
         intel: "dc96d5370e9501b35ba8279b730e5020a5f2db340f903d0a5538ab67a5ab4b35"

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
  depends_on macos: :monterey

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
