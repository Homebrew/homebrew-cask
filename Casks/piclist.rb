cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.9.3"
  sha256 arm:   "aebe08d78f6d1044bddb5556832c31c6ce3b1a367dc2c447b654b66b04665508",
         intel: "62c3f678bd93eff7fe0eb58060aa1582fe48d82940320c837e5eb295cd2a3597"

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
