cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "11ebffb1fcd692ad6988010a2f73401979733f3aff27f5da9bebc79e512d8594",
         intel: "c06a018cafdd0ab5de8d06df5d966650ca7176a903cc23d3f07a386b282b8c5b"

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
