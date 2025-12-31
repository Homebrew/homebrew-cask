cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "ce4bae12e9c1704190fe27497352f4f36227330a86812a0e2654533a7dde8471",
         intel: "b30019736b3b319ccce994a4fbfa8ccd1c43a1b1a4376c836b7a28182ed6e12b"

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
