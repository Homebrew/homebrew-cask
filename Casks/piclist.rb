cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.9.8"
  sha256 arm:   "3e181046171040731d5bba862858b0a4553ba181eb3d4261cf76b1501911e3ab",
         intel: "21ad35f658e744df23fa26998b68ecffc7d31e34e7ab3edfbf2f275ee6b7a416"

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
