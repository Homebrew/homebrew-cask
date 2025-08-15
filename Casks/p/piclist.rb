cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "476638458937230cb8f8693acb51450c47df442a2302329f489bd148b55eb8c2",
         intel: "d08f5710d5a5989c1ba330474415e7b643333eced9479963f3c82f4737183bf1"

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
