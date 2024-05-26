cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.8.6"
  sha256 arm:   "56477e43255b2968a9c512d8ce502a17f9c3832e3dad3445beba7c84d5936824",
         intel: "791ec591861cce527125f4923d45d1636142649eb5306bca175a4030cb1b9e3a"

  url "https://release.piclist.cn/latest/PicList-#{version}-#{arch}.dmg"
  name "PicList"
  desc "Cloud storage manager tool"
  homepage "https://piclist.cn/"

  livecheck do
    url "https://release.piclist.cn/latest/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
