cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.6.1"
  sha256 arm:   "81bbcd1e3e332c255b57957308743860b7b233f429a4bebd97dbaa29af48c63b",
         intel: "91485fd9c97ce0da1ef212f7f744aa7aa2726339b32b30f17ed4fece636eadd6"

  url "https://github.com/Kuingsmile/PicList/releases/download/v#{version}/PicList-#{version}-#{arch}.dmg"
  name "PicList"
  desc "Cloud storage manager tool"
  homepage "https://piclist.cn/"

  livecheck do
    url "https://release.piclist.cn/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
