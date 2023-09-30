cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.6.2"
  sha256 arm:   "76e7c2b671dbc7dca81a1befad273df00f95d7db5900195663d7a265630446c5",
         intel: "e74062d3065e476a7ef2c3288dd30ddff5e2fe77d31286065ea09776bcc5d0b4"

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
