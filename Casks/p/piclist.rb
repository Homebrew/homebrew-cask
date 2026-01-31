cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "44804ae094cb637d838f1af55adbd4caf1808f3b05aa18b1a93d487342911fff",
         intel: "3f46863a66abcf8caae3863ffe227f5c38097b8bf442e553dae130582b2ccc92"

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
