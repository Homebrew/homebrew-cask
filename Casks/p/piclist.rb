cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "ef7ad7d9b31fe34baeb6725b0d829bb4f45e4989bf7044a06bcc7d1bb4b86e84",
         intel: "ae3b1590238e93ef458b6aa6c230e24e285d92c73512d9fafcfb507f24e00e50"

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
