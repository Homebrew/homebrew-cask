cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.5.3"
  sha256 arm:   "d179affc829665c85eea146cb44c5484f265791b9bb8c4b7c4cd137f68c18c05",
         intel: "1a42a6a42f6d1626e7220139353883035bcfa3ae63ee78aeccb9d6da75d6c4f9"

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
