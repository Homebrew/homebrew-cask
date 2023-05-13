cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.9.1"
  sha256 arm:   "5b497ae9efd2fef890e24c4d173b6b9681b913d053a1ba94309df88862b9a521",
         intel: "6e62227dfbe2593a9e18a33302723ac2b7963080419caad2df6b0971b40bbfcc"

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
