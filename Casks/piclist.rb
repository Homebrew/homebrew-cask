cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "29a5a150187b5467becb3f68231e10d8cd6f2aadca2a6305ea740afda3ad90d0",
         intel: "5797def7518e8cfcd99ed34dac0427f84bcbd7c3b12d424e37a4cbd4cbf6c61e"

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
