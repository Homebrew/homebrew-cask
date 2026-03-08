cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.3.2"
  sha256 arm:   "c8428ce8b939c119b706d754670b550c681703c35402e82e168eecdd5e2e6062",
         intel: "add315e00552a6a811417ba71442e2a32c1d150369e44c6398c2e4027f752eb8"

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
