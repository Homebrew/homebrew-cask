cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.8.1"
  sha256 arm:   "9d851018500a48a5d11436f921a616eb3725523986633cfcd7183042ee20d6ac",
         intel: "c26a20b2033f05b26c6998a520685e22ed8ec47351a5c3a22e3f3047b69abfbf"

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
