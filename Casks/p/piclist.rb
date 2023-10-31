cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.6.6"
  sha256 arm:   "663388389574709623088c0369eb7b550257c69a119c358b94cb49032af117b7",
         intel: "bf132693522b32864450c9983bc97f59446dbfa5ea5ac250bd667d7ec29b858c"

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
