cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.9.5"
  sha256 arm:   "8da04bf5065d876bdeb0c9a29c7cc165340c2ab3d96bf25507c388dbe0b14a08",
         intel: "7935c10c1c5cf2e23851435dc3a8be1d84174709c59d94c139edc2950f026301"

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
