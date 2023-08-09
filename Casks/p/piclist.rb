cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.9.9"
  sha256 arm:   "10bd62e1803875449ecd697913781bb4f3ad5f5b5b59f257d0d07062aabb16e4",
         intel: "20892f466b722c73bb5ed37e08f81e739401364bc129143622f8c176b594c896"

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
