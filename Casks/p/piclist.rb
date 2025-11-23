cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.0.6"
  sha256 arm:   "590067bdd0627c294142544aa505c2c6077cabe8d0099e52b7ab63dc7011641d",
         intel: "5e3909874ed1b06081fe48f33cb50b34fc0be15accfe1fc141abe803b2c4d324"

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
