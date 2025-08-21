cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "536f17de245bd088c59ddde2585e60ce2e9a39de2042fabe1b44bb71c01bb10d",
         intel: "7b81b3bb01ba1d5c64c1edbc70c537f765c2546b9900f6c166a3b33dc2f639b6"

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
  depends_on macos: ">= :high_sierra"

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
