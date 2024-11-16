cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.9.5"
  sha256 arm:   "e0d50a75eb3abd31dce2913103ae2bfc36fb7e5d676c650cf553d3bf2696d6d9",
         intel: "5ed618be8ecd84b8a87ec95875f99f3e1aca3b1272ac8053b38ce01df8b17614"

  url "https://release.piclist.cn/latest/PicList-#{version}-#{arch}.dmg"
  name "PicList"
  desc "Cloud storage manager tool"
  homepage "https://piclist.cn/"

  livecheck do
    url "https://release.piclist.cn/latest/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
