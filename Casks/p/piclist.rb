cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.2.1"
  sha256 arm:   "3057623f751050201b05829f59c16d6d588bbf38b7f27d35437c3bf340528e50",
         intel: "f0a3dfbc71ee99ece785f5fd034934e4860d29ec4c4a67cef2183f3d7a41e57b"

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
