cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.0.4"
  sha256 arm:   "82f295c9b47b34e076a7f01e6b1e040d52c6fc9b4585633e7b6a27d144462252",
         intel: "cba6c8ad516c46acab22083ce5da88781a2587b5bd3acad269ea9af9d9867ea3"

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
  depends_on macos: ">= :high_sierra"

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
