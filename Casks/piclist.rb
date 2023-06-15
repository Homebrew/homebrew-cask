cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.9.4"
  sha256 arm:   "083f8a96e9f4154fe439eec5257704c4d8eae6c613c306a732ac03ac51af4e0d",
         intel: "afc80fa970a89c03ceea2ba955d75ad7d5913e62b2e73061958a6b9135eef178"

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
