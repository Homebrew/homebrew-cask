cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "9fcdd8c88916fb9c1f4a3d5776688d950238d10b70a62ed748a8cb459243f124",
         intel: "96a3df31ff4d324eeb5111a2775303ceed07014994e386cd9fb41e2fc5891ce8"

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
