cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.5.2"
  sha256 arm:   "75799dad03a96a43860536f12308253947ef3f298bab776518d151305fe7403c",
         intel: "b3bcc80cb47437cda025fd30e0c730a32ae3ff968c3018015de32c8b2f5bce1e"

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
