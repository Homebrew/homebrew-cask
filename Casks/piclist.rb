cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.9.6"
  sha256 arm:   "31bedaab149ac0945c1a175ee7400e6d0bd29d9c448ede49f22622b134752681",
         intel: "ce7294a119683474dff095b845bf3092a56d27337001b31483b00a7cf716a2b8"

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
