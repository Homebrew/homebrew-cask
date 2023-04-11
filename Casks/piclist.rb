cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.6.2"
  sha256 arm:   "06ffe40078e48ab2e7c70a723bb5c1106abdf7648864fe5c611506065f53df73",
         intel: "72407e791ee341f8cd0ebf040aa1d249ebce5d476e64956d2702d7d5a0a6e611"

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
