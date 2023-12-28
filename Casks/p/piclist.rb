cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "0ae3a6c94d69812a7ac360588684673ae32b40b85e6b0c0f0435c57c81175dd4",
         intel: "e6a9a6b67b830054043e78571f8c18c69befb84496463c568e0c897456745437"

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
