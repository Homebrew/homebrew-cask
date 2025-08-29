cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.0.3"
  sha256 arm:   "74e5473ec57b18bc1f5435cb5b369ba7b23b103e09cab1541ee337ede5efbff0",
         intel: "b138264c6ad432b430d168551b4223fe14d23bfda41302d8fb3783d3f85026e0"

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
