cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.9.9"
  sha256 arm:   "575ce5f796ce95b6abda88ab8ba7e539f0e0f848e3299f3ba9c4e6d8afc65e0c",
         intel: "26cd938a26f557b23a9a1f7a67a6c4d7e77a4ca8f153ca8598e457503244d94d"

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
