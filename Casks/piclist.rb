cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "87aef674d15ea168408824e4e97466caec4107d17d873ee65734270ac2829b33",
         intel: "bab927911b18ed8e626a1416002d76819e112011226e82ad0d6a312444184fd7"

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
