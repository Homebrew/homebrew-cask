cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.0.5"
  sha256 arm:   "0bb38b983355f45429ed3952aefc37d0a0e577c0841fd8318c81eb6ef77ec223",
         intel: "ff6c5dafe550fd4c2838adea8371cbb6ffe4a32a083f3ddbf8a6c3603a09a944"

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
